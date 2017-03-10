package com.ticket.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticket.model.Department;
import com.ticket.model.Employee;
import com.ticket.model.Role;
import com.ticket.model.Solution;
import com.ticket.model.Transaction;
import com.ticket.model.User;
import com.ticket.service.EmployeeService;
import com.ticket.service.TicketDetailService;
import com.ticket.service.UserSevice;

@Controller
@RequestMapping("/Employee")
public class EmployeeDetailController {
	
	@Autowired
	EmployeeService empService;

	@GetMapping("/employeelogin")
	public String employeelogin(@RequestParam("emailid") String emailid, @RequestParam("password") String password,
			ModelMap modelMap, HttpSession session) {
		Employee emp = new Employee();
		emp.setEmailId(emailid);
		emp.setPassword(password);
		try {
			if (empService.login(emp) != null) {
				session.setAttribute("empLogin", empService.login(emp));

				return "../success.jsp";
			}

		} catch (Exception e) {
			e.printStackTrace();
			modelMap.addAttribute("ERROR_MESSAGE", e.getMessage());
		}
		return "../employeelogin.jsp";
	}

	

	@GetMapping("/empregister")
	public String empRegister(@RequestParam("deptId") int deptId, @RequestParam("roleId") int roleId,
			@RequestParam("name") String name, @RequestParam("emailId") String emailId,
			@RequestParam("password") String password) {
		Role role = new Role();
		Employee emp = new Employee();
		Department dept = new Department();
		dept.setId(deptId);
		role.setId(roleId);
		emp.setDepartment(dept);
		emp.setRole(role);
		emp.setName(name);
		emp.setEmailId(emailId);
		emp.setPassword(password);

		try {
			empService.registerService(emp);
			return ("../success.jsp");
		} catch (Exception e) {

			return ("../empregister.jsp");
		}
	}

	

}
