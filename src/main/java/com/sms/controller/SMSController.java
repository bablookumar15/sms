package com.sms.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.Base64Utils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.sms.constant.SMSConstant;
import com.sms.model.SchoolInfoBean;
import com.sms.model.SignupBean;
import com.sms.model.Student;
import com.sms.model.StudentRegBean;
import com.sms.model.User;
import com.sms.service.CommonService;
import com.sms.service.StudentService;
import com.sms.service.UserService;
import com.sms.util.AgeCalculator;
import com.sms.util.LocationUtil;
import com.sms.util.MailService;

@Controller
@RequestMapping("/")
public class SMSController {
	
	private static Map<String, String> passMap = new HashMap<String, String>();
	private Random random = new Random();

	@Autowired
	StudentService service;
	
	@Autowired
	CommonService commonService; 
	
	@Autowired
	UserService userService;
	
	@Autowired
	MessageSource messageSource;
	
	@Autowired
	MailService mailService;
	
	@Autowired
	SimpleDateFormat simpleDateFormat;
	
	/*
	 * load home/index page
	 */
	@RequestMapping("/")
	public String index(ModelMap modelMap) {
		Date today = new Date();
		List<SchoolInfoBean> recentSchools = new ArrayList<>();
		List<SchoolInfoBean> schoolInfoBeans = commonService.getSchoolList(false);
		for (SchoolInfoBean bean:schoolInfoBeans) {
			try {
				long diff = TimeUnit.DAYS.convert(today.getTime()-simpleDateFormat.parse(bean.getCreateddate()).getTime(), TimeUnit.MILLISECONDS);
				if (diff<10) {
					recentSchools.add(bean);
				}
			} catch (ParseException e) {}
		}
		modelMap.addAttribute("schools", recentSchools);
		return "index";
	}
	
	
	/*
	 * load signup page
	 */
	@GetMapping("/signup")
	public String signup(ModelMap modelMap) {
		modelMap.addAttribute("signupBean", new SignupBean());
		return "signup";
	}

	/*
	 * do signup
	 */
	@PostMapping("/signup.do")
	public String doSignup(@ModelAttribute("signupBean") SignupBean signupBean, ModelMap modelMap) {
		boolean emailExist = userService.emailExist(signupBean.getEmail());
		if (emailExist) {
			modelMap.addAttribute("emailExist", "This Email is Already Exist.");
		}else {
			userService.doSignup(signupBean);
			mailService.sendEmail(signupBean.getEmail(), "User Registration.", "Hi "+signupBean.getFirstname()+" Your Registration is Successfull.");
			modelMap.addAttribute("msg", "Registration Successfull.");
		}
		return "redirect:/login";
	}
	
	
	/*
	 * load submit school page
	 */
	@GetMapping("/submitSchool")
	public String submitSchool(ModelMap modelMap, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_SYSTEM_ADMIN)) {
				List<User> users = commonService.getSchoolAdminWithNoSchool();
				modelMap.addAttribute("users", users);
			}
			modelMap.addAttribute("schoolInfoBean", new SchoolInfoBean());
			return "submitSchool";
		}else {
			modelMap.addAttribute("msg", "Please Login to Submit School.");
			return "redirect:/login";
		}
	}
	
	/*
	 * load edit school page from school id
	 */
	@GetMapping("/editSchool")
	public String editSchool(ModelMap modelMap, @RequestParam("id") int id) {
		SchoolInfoBean schoolInfoBean = commonService.loadSchool(id);
		modelMap.addAttribute("schoolInfoBean", schoolInfoBean);
		return "editSchool";
	}
	
	/*
	 * load school page from school id
	 */
	@GetMapping("/loadSchool")
	public String loadSchool(ModelMap modelMap, @RequestParam("id") int id) {
		SchoolInfoBean schoolInfoBean = commonService.loadSchool(id);
		modelMap.addAttribute("schoolInfoBean", schoolInfoBean);
		return "school";
	}
	
	/*
	 * delete school
	 */
	@GetMapping("/deleteSchool")
	public String deleteSchool(ModelMap modelMap, @RequestParam("id") int id) {
		boolean deleteSchool = commonService.deleteSchool(id);
		if (deleteSchool) {
			modelMap.addAttribute("msg", "School Deleted Successfully.");
		}
		return "redirect:/schools";
	}
	
	/*
	 * change school status
	 */
	@GetMapping("/schoolStatus")
	public String schoolStatus(ModelMap modelMap, @RequestParam("id") int id, @RequestParam("status") boolean status) {
		boolean schoolStatus = commonService.schoolStatus(id, status);
		if (schoolStatus) {
			modelMap.addAttribute("msg", "School Status Changed Successfully.");
		}
		return "redirect:/schools";
	}
	
	/*
	 * change student status
	 */
	@GetMapping("/studentStatus")
	public String studentStatus(ModelMap modelMap, @RequestParam("id") int id, @RequestParam("flag") boolean status, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			if (user.getRole().equals(SMSConstant.ROLE_SCHOOL_ADMIN)) {
				boolean studentStatus = commonService.studentStatus(id, status);
				if (studentStatus) {
					modelMap.addAttribute("msg", "Student Status Changed Successfully.");
				}
				StudentRegBean studentRegBean = commonService.getStudentFromId(id);
				User parent = commonService.getUserById(studentRegBean.getCreatedby());
				String stStatus = null;
				if (status) {
					stStatus="Active";
				}else {
					stStatus="DeActive";
				}
				mailService.sendEmail(parent.getEmail(), "Student Status", "Hi "+parent.getFirstname()+" Your Student Activaation Status has been changed to "+stStatus);
				if (status) {
					return "redirect:/students?flag=deactive";
				}else {
					return "redirect:/students?flag=enrolled";	
				}
			}
		}else {
			modelMap.addAttribute("msg", "Please login to change student status.");
			return "redirect:/login";
		}
		return "redirect:/";
	}
	
	/*
	 * do submit school
	 */
	@PostMapping("/submitSchool.do/{lat}/{log}")
	public String doSubmitSchool(@ModelAttribute("schoolInfoBean") SchoolInfoBean schoolInfoBean,
			@RequestParam(required = false, value = "facility") String[] facilities, HttpServletRequest request, 
			@RequestParam(required = false, value = "edugrade") String[] edugrades, 
			@PathVariable String lat, @PathVariable String log, ModelMap modelMap) {
		if (facilities.length > 0) {
			String[] facility = new String[facilities.length];
			String[] facilityVal = new String[facilities.length];
			for (int i = 0; i < facilities.length; i++) {
				facilityVal[i] = facilities[i].split("@")[0];
				facility[i] = facilities[i].split("@")[1];
			}
			schoolInfoBean.setFacilities(String.join(",", facility));
			schoolInfoBean.setFacilitiesVal(String.join(",", facilityVal));
		}
		if (edugrades.length >0) {
			String[] grades = new String[edugrades.length];
			String[] gradesVal = new String[edugrades.length];
			for (int i = 0; i < edugrades.length; i++) {
				gradesVal[i] = edugrades[i].split("@")[0];
				grades[i] = edugrades[i].split("@")[1];
			}
			schoolInfoBean.setEdugrade(String.join(",", grades));
			schoolInfoBean.setEdugradeVal(String.join(",", gradesVal));
		}
		if (!lat.isEmpty() && !log.isEmpty()) {
			schoolInfoBean.setLat(lat);
			schoolInfoBean.setLog(log);
		}
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			if (user.getRole().equals(SMSConstant.ROLE_SCHOOL_ADMIN)) {
				schoolInfoBean.setCreatedby(user.getUserid());
			}
			commonService.doSubmitSchool(schoolInfoBean);
			modelMap.addAttribute("msg", "School Submitted Successfully.");
		}else {
			modelMap.addAttribute("msg", "Error Occured.");
		}
		return "redirect:/schools";
	}
	
	/*
	 * cancel Edit school
	 */
	@RequestMapping("/cancel")
	public String cancel() {
		return "redirect:/schools";
	}
	
	/*
	 * cancel Edit school
	 */
	@RequestMapping("/cancelEditStudent")
	public String cancelEditStudent() {
		return "redirect:/studApps";
	}
	/*
	 * do Edit school
	 */
	@PostMapping("/editSchool.do")
	public String doEditSchool(@ModelAttribute("schoolInfoBean") SchoolInfoBean schoolInfoBean,
			@RequestParam(required = false, value = "facility") String[] facilities,
			@RequestParam(required = false, value = "edugrade") String[] edugrades,
			@RequestParam("id") int id, ModelMap modelMap) {
		if (facilities.length > 0) {
			String[] facility = new String[facilities.length];
			String[] facilityVal = new String[facilities.length];
			for (int i = 0; i < facilities.length; i++) {
				facilityVal[i] = facilities[i].split("@")[0];
				facility[i] = facilities[i].split("@")[1];
			}
			schoolInfoBean.setFacilities(String.join(",", facility));
			schoolInfoBean.setFacilitiesVal(String.join(",", facilityVal));
		}
		if (edugrades.length >0) {
			String[] grades = new String[edugrades.length];
			String[] gradesVal = new String[edugrades.length];
			for (int i = 0; i < edugrades.length; i++) {
				gradesVal[i] = edugrades[i].split("@")[0];
				grades[i] = edugrades[i].split("@")[1];
			}
			schoolInfoBean.setEdugrade(String.join(",", grades));
			schoolInfoBean.setEdugradeVal(String.join(",", gradesVal));
		}
		
		SchoolInfoBean bean = commonService.loadSchool(id);
		MultipartFile file = schoolInfoBean.getSchoolimg();
		if (!file.isEmpty()) {
			try {
				byte[] encodeBase64 = Base64Utils.encode(file.getBytes());
				String base64Encoded = new String(encodeBase64, "UTF-8");
				schoolInfoBean.setImgdata(base64Encoded);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			schoolInfoBean.setImgdata(bean.getImgdata());
		}
		schoolInfoBean.setCreatedby(bean.getCreatedby());
		schoolInfoBean.setCreateddate(bean.getCreateddate());
		schoolInfoBean.setSchoolinfoid(id);
		schoolInfoBean.setActive(bean.isActive());
		schoolInfoBean.setLat(bean.getLat());
		schoolInfoBean.setLog(bean.getLog());
		commonService.doEditSchool(schoolInfoBean);
		modelMap.addAttribute("msg", "School Updated Successfully.");
		return "redirect:/schools";
	}
	
	
	/*
	 * load school admission page from school id
	 */
	@GetMapping("/apply")
	public String apply(ModelMap modelMap, @RequestParam("id") int id, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			if (user.getRole().equals(SMSConstant.ROLE_PARENT)) {
				SchoolInfoBean schoolInfoBean = commonService.loadSchool(id);
				modelMap.addAttribute("schoolInfoBean", schoolInfoBean);
				modelMap.addAttribute("studentRegBean", new StudentRegBean());
				return "admissionform";
			}else {
				modelMap.addAttribute("msg", "Only Parents Apply for School.");
				return "redirect:/home";
			}
			
		}else {
			modelMap.addAttribute("msg", "Please login to Apply for School.");
			return "redirect:/login";
		}
		
	}
	/*
	 * do submit school
	 */
	@PostMapping("/apply.do")
	public String doStudentReg(@ModelAttribute("studentRegBean") StudentRegBean studentRegBean, ModelMap modelMap, @RequestParam("id") int id,HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			MultipartFile file = studentRegBean.getStudimg();
			if (!file.isEmpty()) {
				try {
					byte[] encodeBase64 = Base64Utils.encode(file.getBytes());
					String base64Encoded = new String(encodeBase64, "UTF-8");
					studentRegBean.setImgdata(base64Encoded);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			SchoolInfoBean schoolInfoBean = commonService.loadSchool(id);
			studentRegBean.setSchoolname(schoolInfoBean.getSchoolname());
			studentRegBean.setCreatedby(user.getUserid());
			studentRegBean.setSchoolinfoid(id);
			studentRegBean.setAge(AgeCalculator.calculateAge(studentRegBean.getDob()));
			commonService.doStudentReg(studentRegBean);
			String subject = "Student Registration";
			String msgBody = "Hello "+user.getFirstname()+" You have successfully registered student: "+studentRegBean.getName();
			mailService.sendEmail(user.getEmail(), subject, msgBody);
			modelMap.addAttribute("msg", "Student Registered Successfully.");
			return "redirect:/schools";
		}else {
			modelMap.addAttribute("msg", "Please Login to Register Student.");
			return "redirect:/login";
		}
	}
	
	/*
	 * change student status
	 */
	@GetMapping("/accept")
	public String accept(ModelMap modelMap, @RequestParam("id") int id, @RequestParam("flag") char flag) {
		boolean studentStatus = commonService.accept(id, flag);
		if (studentStatus) {
			modelMap.addAttribute("msg", "Student Status Changed Successfully.");
			StudentRegBean studentRegBean = commonService.getStudentFromId(id);
			String subject = "Student Registration";
			String msg = null;
			if (flag=='Y') {
				msg = " Your Application successfully Accepted for student: ";
			}else if (flag=='N') {
				msg = " Sorry!! Your Application is Rejected for student: ";
			}
			User user = commonService.getUserById(studentRegBean.getCreatedby());
			String msgBody = "Hello "+user.getFirstname()+msg+studentRegBean.getName();
			mailService.sendEmail(user.getEmail(), subject, msgBody);
		}
		return "redirect:/students?flag=new";
	}
	
	/*
	 * load applications for particular school admin
	 */
	@GetMapping("/students")
	public String students(ModelMap modelMap, HttpServletRequest request) {
		modelMap.addAttribute("msg", request.getParameter("msg"));
		String flag = request.getParameter("flag");
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_SCHOOL_ADMIN)) {
				List<StudentRegBean> studentRegBeans = commonService.getAllStudents(user.getUserid(), flag);
				modelMap.addAttribute("studentRegBeans", studentRegBeans);
			}
		}else {
			modelMap.addAttribute("msg", "Please Login to View Applications.");
			return "redirect:/login";
		}
		
		return "students";
	}
	
	/*
	 * load applications for parents
	 */
	@GetMapping("/studApps")
	public String studApps(ModelMap modelMap, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_PARENT)) {
				List<StudentRegBean> studentRegBeans = commonService.getAllStudents(user.getUserid());
				modelMap.addAttribute("studentRegBeans", studentRegBeans);
			}
		}else {
			modelMap.addAttribute("msg", "Please Login to View Applications.");
			return "redirect:/login";
		}
		
		return "students";
	}
	
	/*
	 * load edit student page from student id
	 */
	@GetMapping("/editStudent")
	public String editStudent(ModelMap modelMap, @RequestParam("id") int id) {
		StudentRegBean studentRegBean = commonService.getStudentFromId(id);
		SchoolInfoBean schoolInfoBean = commonService.loadSchool(studentRegBean.getSchoolinfoid());
		modelMap.addAttribute("studentRegBean", studentRegBean);
		modelMap.addAttribute("schoolInfoBean", schoolInfoBean);
		return "editStudent";
	}
	
	/*
	 * do Edit student
	 */
	@PostMapping("/editStudent.do")
	public String doEditStudent(@ModelAttribute("studentRegBean") StudentRegBean studentRegBean,
			@RequestParam("id") int id, ModelMap modelMap, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_PARENT)) {
				StudentRegBean bean = commonService.getStudentFromId(id);
				MultipartFile file = studentRegBean.getStudimg();
				if (!file.isEmpty()) {
					try {
						byte[] encodeBase64 = Base64Utils.encode(file.getBytes());
						String base64Encoded = new String(encodeBase64, "UTF-8");
						studentRegBean.setImgdata(base64Encoded);
					} catch (IOException e) {
						e.printStackTrace();
					}
				}else {
					studentRegBean.setImgdata(bean.getImgdata());
				}
				studentRegBean.setStudentid(id);
				studentRegBean.setSchoolinfoid(bean.getSchoolinfoid());
				studentRegBean.setAge(bean.getAge());
				studentRegBean.setSchoolname(bean.getSchoolname());
				studentRegBean.setUpdatedby(user.getUserid());
				studentRegBean.setCreatedby(bean.getCreatedby());
				studentRegBean.setCreateddate(bean.getCreateddate());
				studentRegBean.setActive(bean.isActive());
				studentRegBean.setAccept(bean.getAccept());
				commonService.doEditStudent(studentRegBean);
				modelMap.addAttribute("msg", "Student Updated Successfully.");
				return "redirect:/studApps";
			}else {
				modelMap.addAttribute("msg", "You are not allowed to edit student.");
			}
		}else {
			modelMap.addAttribute("msg", "Please Login to Edit Student.");
			return "redirect:/login";
		}
		return "redirect:/";
	}
	
	/*
	 * load forgot password page
	 */
	@RequestMapping("/forgotpwd")
	public String forgotpwd(ModelMap modelMap, HttpServletRequest request) {
		if (request.getParameter("pin") != null) {
			String pwd = request.getParameter("password");
			String pin = request.getParameter("pin");
			if (passMap.containsKey(pin)) {
				String email = passMap.get(pin);
				commonService.changePwd(email, pwd);
				User user = commonService.getUserByEmail(email);
				mailService.sendEmail(email, "Password Changed", "Hi "+user.getFirstname()+" Your Password Changed Successfully.");
				modelMap.addAttribute("msg", "Your Password Changed Successfully.");
				passMap.remove(pin);
				return "redirect:/login";
			}else {
				modelMap.addAttribute("msg", "You have entered wrong PIN.");
				return "changepwd";
			}
		}else if (request.getParameter("email") != null){
			User user = commonService.getUserByEmail(request.getParameter("email"));
			if (user != null) {
				String pin = String.format("%04d", random.nextInt(10000));
				passMap.put(pin, request.getParameter("email"));
				mailService.sendEmail(user.getEmail(), "Forgot Password PIN", "Hi "+user.getFirstname()+" Please use this pin to change password: "+pin);
				modelMap.addAttribute("msg", "PIN Generated for Change Password Request.");
				return "changepwd";	
			}else {
				modelMap.addAttribute("msg", "You have entered wrong email.");
			}
		}
		return "forgotpwd";
	}
	
	@RequestMapping("/searchSchool")
	public String searchSchoolCriteria(ModelMap modelMap,@RequestParam(required = false, value = "lat") String lat, @RequestParam(required = false, value = "log") String log, HttpServletRequest request) {
		List<SchoolInfoBean> schools = null;
		String name_area = request.getParameter("school_search");
		String standard = request.getParameter("standard");
		String facility = request.getParameter("facility");
		String sort = request.getParameter("sortby");
		List<SchoolInfoBean> schoolInfoBeans = commonService.searchSchool(name_area, standard, facility);
		if (sort !=null && sort.equals("2") && !lat.isEmpty() && !log.isEmpty() && schoolInfoBeans.size()>0) {
			schools = new ArrayList<>();
			try {
				for(SchoolInfoBean bean:schoolInfoBeans){
					double diff = LocationUtil.distance(Double.parseDouble(lat), Double.parseDouble(log), Double.parseDouble(bean.getLat()), Double.parseDouble(bean.getLog()));
					if (diff<=10) {
						schools.add(bean);
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			modelMap.addAttribute("schools", schools);
		}else {
			modelMap.addAttribute("schools", schoolInfoBeans);
		}
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_SYSTEM_ADMIN)) {
				modelMap.addAttribute("schools", schoolInfoBeans);
				return "systemAdmin";
			}
		}
		return "schoollist";
	}
	
	
	/*
	 * List all existing Students.
	 */
	@RequestMapping(value = {"/list" }, method = RequestMethod.GET)
	public String listStudents(ModelMap model) {

		List<Student> students = service.findAllStudents();
		model.addAttribute("students", students);
		return "allstudents";
	}

	/*
	 * Add a new Student.
	 */
	@RequestMapping(value = { "/new" }, method = RequestMethod.GET)
	public String newStudent(ModelMap model) {
		Student student = new Student();
		model.addAttribute("student", student);
		model.addAttribute("edit", false);
		return "registration";
	}

	/*
	 * Handling POST request for validating the user input and saving Student in database.
	 */
	@RequestMapping(value = { "/new" }, method = RequestMethod.POST)
	public String saveStudent(@Valid Student student, BindingResult result,
			ModelMap model) {

		if (result.hasErrors()) {
			return "registration";
		}
		
		if(!service.isStudentCodeUnique(student.getId(), student.getCode())){
			FieldError codeError =new FieldError("Student","code",messageSource.getMessage("non.unique.code", new String[]{student.getCode()}, Locale.getDefault()));
		    result.addError(codeError);
			return "registration";
		}
		
		service.saveStudent(student);

		model.addAttribute("success", "Student " + student.getName() + " registered successfully");
		return "success";
	}


	/*
	 * Provide the existing Student for updating.
	 */
	@RequestMapping(value = { "/edit-{code}-student" }, method = RequestMethod.GET)
	public String editStudent(@PathVariable String code, ModelMap model) {
		Student student = service.findStudentByCode(code);
		model.addAttribute("student", student);
		model.addAttribute("edit", true);
		return "registration";
	}
	
	/*
	 * Handling POST request for validating the user input and updating Student in database.
	 */
	@RequestMapping(value = { "/edit-{code}-student" }, method = RequestMethod.POST)
	public String updateStudent(@Valid Student student, BindingResult result,
			ModelMap model, @PathVariable String code) {

		if (result.hasErrors()) {
			return "registration";
		}

		if(!service.isStudentCodeUnique(student.getId(), student.getCode())){
			FieldError codeError =new FieldError("Student","code",messageSource.getMessage("non.unique.code", new String[]{student.getCode()}, Locale.getDefault()));
		    result.addError(codeError);
			return "registration";
		}

		service.updateStudent(student);

		model.addAttribute("success", "Student " + student.getName()	+ " updated successfully");
		return "success";
	}

	
	/*
	 * Delete an Student by it's CODE value.
	 */
	@RequestMapping(value = { "/delete-{code}-student" }, method = RequestMethod.GET)
	public String deleteStudent(@PathVariable String code) {
		service.deleteStudentByCode(code);
		return "redirect:/list";
	}

}
