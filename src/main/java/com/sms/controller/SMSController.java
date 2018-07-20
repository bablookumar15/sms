package com.sms.controller;

import java.io.IOException;
import java.util.List;
import java.util.Locale;

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
import com.sms.util.MailService;

@Controller
@RequestMapping("/")
public class SMSController {

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
	
	/*
	 * load home/index page
	 */
	@RequestMapping("/")
	public String index() {
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
	 * do submit school
	 */
	@PostMapping("/submitSchool.do")
	public String doSubmitSchool(@ModelAttribute("schoolInfoBean") SchoolInfoBean schoolInfoBean,
			@RequestParam(required = false, value = "facility") String[] facilities, HttpServletRequest request, 
			@RequestParam(required = false, value = "edugrade") String[] edugrades, ModelMap modelMap) {
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
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			schoolInfoBean.setCreatedby(user.getUserid());
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
		commonService.doEditSchool(schoolInfoBean);
		modelMap.addAttribute("msg", "School Updated Successfully.");
		return "redirect:/schools";
	}
	
	
	/*
	 * load school admission page from school id
	 */
	@GetMapping("/apply")
	public String apply(ModelMap modelMap, @RequestParam("id") int id) {
		SchoolInfoBean schoolInfoBean = commonService.loadSchool(id);
		modelMap.addAttribute("schoolInfoBean", schoolInfoBean);
		modelMap.addAttribute("studentRegBean", new StudentRegBean());
		return "admissionform";
	}
	
	
	/*
	 * load school add fees page from school id
	 */
	@GetMapping("/addFees")
	public String addFees(ModelMap modelMap, @RequestParam("id") int id) {
		SchoolInfoBean schoolInfoBean = commonService.loadSchool(id);
		modelMap.addAttribute("schoolInfoBean", schoolInfoBean);
		modelMap.addAttribute("studentRegBean", new StudentRegBean());
		return "admissionform";
	}
	
	/*
	 * do submit school
	 */
	@PostMapping("/apply.do")
	public String doStudentReg(@ModelAttribute("studentRegBean") StudentRegBean studentRegBean, ModelMap modelMap, @RequestParam("id") int id) {
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
		studentRegBean.setSchoolinfoid(id);
		commonService.doStudentReg(studentRegBean);
		String subject = "Student Registration";
		String msgBody = "Hello "+studentRegBean.getMothername()+" You have successfully registered student: "+studentRegBean.getName();
		mailService.sendEmail(studentRegBean.getMemail(), subject, msgBody);
		modelMap.addAttribute("msg", "Student Registered Successfully.");
		return "redirect:/schools";
		
	}
	
	/*
	 * load applications for particular school admin
	 */
	@GetMapping("/applications")
	public String applications(ModelMap modelMap, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_SCHOOL_ADMIN)) {
				List<StudentRegBean> studentRegBeans = commonService.getAllApplication(user.getUserid());
				modelMap.addAttribute("studentRegBeans", studentRegBeans);
			}
		}else {
			modelMap.addAttribute("msg", "Please Login to View Applications.");
			return "login";
		}
		
		return "applications";
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
