package com.naresh.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticket.exception.ServiceException;
import com.ticket.exception.ValidatorException;
import com.ticket.model.Department;
import com.ticket.model.Employee;
import com.ticket.model.Transaction;
import com.ticket.model.User;
import com.ticket.service.TicketDetailService;
import com.ticket.service.UserSevice;
@Controller
@RequestMapping("/")
public class TicketDetailController {
	User user = new User();
	Transaction transaction=new Transaction();
	TicketDetailService ticketService=new TicketDetailService();
	UserSevice userService = new UserSevice();
    Department dept = new Department();
    Employee emp=new Employee();

	@GetMapping("/userLogin")
	public String userLogin(@RequestParam("emailid") String emailid, @RequestParam("password") String password,
			ModelMap modelMap) {
		user.setEmailId(emailid);
		user.setPassword(password);
		try{
        userService.loginService(user);
    	return "successfull.jsp";
		}catch(ValidatorException e){
			e.printStackTrace();
			modelMap.addAttribute("ERROR_MESSAGE", e.getMessage());
			return "../userlogin.jsp";
		}
			
	}

	@GetMapping("/userregister")
	public String userregister(@RequestParam("name")String name,@RequestParam("emailId") String emailId
			,@RequestParam("password")String password,ModelMap modelMap){
		user.setEmailId(emailId);
		user.setPassword(password);
		user.setName(name);

		try {
			userService.registerService(user);
			return "userlogin.jsp";

		} catch (ServiceException e) {
			e.printStackTrace();
			modelMap.addAttribute("error", e.getMessage());
			return "../userregister.jsp";

		}
		}
	
		@GetMapping("/createticket")
		public String createticket(@RequestParam("userid") int userid,@RequestParam("departmentname") String deptname
				,@RequestParam("subject") String sub,@RequestParam("description") String desc
				,@RequestParam("priority") String priority,ModelMap modelMap){
			user.setId(userid);
			transaction.setUsers(user);
			dept.setName(deptname);
			transaction.setDepartment(dept);
			transaction.setSubject(sub);
			transaction.setDesc(desc);
			transaction.setPriority(priority);
			try {
				ticketService.createticketService(transaction);
				return "index.jsp";

		} catch (ValidatorException e) {
			e.printStackTrace();
			modelMap.addAttribute("error", e.getMessage());
			return"../createticket.jsp";

		}
		
		} 
		
	}


