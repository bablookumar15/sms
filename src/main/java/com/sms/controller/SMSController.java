package com.sms.controller;

import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sms.model.SchoolInfoBean;
import com.sms.model.SignupBean;
import com.sms.model.Student;
import com.sms.service.StudentService;
import com.sms.service.UserService;

@Controller
@RequestMapping("/")
public class SMSController {

	@Autowired
	StudentService service;
	
	@Autowired
	UserService userService;
	
	@Autowired
	MessageSource messageSource;
	
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
		}
		return "signup";
	}
	
	
	/*
	 * load submit school page
	 */
	@GetMapping("/submitSchool")
	public String submitSchool(ModelMap modelMap) {
		modelMap.addAttribute("schoolInfoBean", new SchoolInfoBean());
		return "submitSchool";
	}
	
	/*
	 * do submit school
	 */
	@PostMapping("/submitSchool.do")
	public String doSignup(@ModelAttribute("schoolInfoBean") SchoolInfoBean schoolInfoBean, ModelMap modelMap) {
		return "submitSchool";
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
