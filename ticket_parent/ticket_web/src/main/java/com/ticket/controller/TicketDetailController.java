package com.ticket.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.ValidationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticket.exception.ValidatorException;
import com.ticket.model.Department;
import com.ticket.model.Employee;
import com.ticket.model.Role;
import com.ticket.model.Solution;
import com.ticket.model.Transaction;
import com.ticket.model.User;
import com.ticket.service.EmployeeService;
import com.ticket.service.TicketDetailService;
import com.ticket.service.UserSevice;
import com.ticket.util.MailUtil;
@Controller
@RequestMapping("/")
public class TicketDetailController {
	User user = new User();
	Solution issue = new Solution();
	Transaction transaction = new Transaction();
@Autowired
	TicketDetailService ticketService;

	@GetMapping("/createticket")
	public String createticket(@RequestParam("userid") int userid, @RequestParam("departmentname") String deptname,
			@RequestParam("subject") String sub, @RequestParam("description") String desc,
			@RequestParam("priority") String priority, ModelMap modelMap) throws Exception {
		User user = new User();
		Transaction transaction = new Transaction();
		Department dept = new Department();
		user.setId(userid);
		transaction.setUsers(user);
		dept.setName(deptname);
		transaction.setDepartment(dept);
		transaction.setSubject(sub);
		transaction.setDesc(desc);
		transaction.setPriority(priority);
		try {
			ticketService.createticketService(transaction);
			MailUtil.sendSimpleMail("sakthiselvam969@gmail.com",userid,sub);

			return "viewticket.jsp";

		} catch (ValidatorException e) {
			e.printStackTrace();
			modelMap.addAttribute("error", e.getMessage());
			return "../createticket.jsp";

		}

	}

	@GetMapping("/viewticket")
	public String viewTicket(@RequestParam("userId") int userId, ModelMap modelMap) {
		List<Transaction> transactionList = ticketService.listByUserIdService(userId);
		modelMap.addAttribute("list", transactionList);
		return "viewticket.jsp";
	}

	@GetMapping("/closeticket")
	public String closeticket(@RequestParam("ticketid") int ticketid, @RequestParam("userid") int userid,
			ModelMap modelMap) {
		transaction.setId(ticketid);
		user.setId(userid);
		transaction.setUsers(user);
		try {
			if (ticketService.closeTicketServer(transaction) != null) {
				System.out.println(transaction);
				return "viewticket.jsp";
			}

		} catch (ValidationException e) {
			e.printStackTrace();
			modelMap.addAttribute("ERROR_MESSAGE", e);
		}
		return "closeticket.jsp";

	}

	@GetMapping("/updateticket")
	public String updateticket(@RequestParam("ticketid") int ticketid, @RequestParam("userid") int userid,
			@RequestParam("subject") String subject, @RequestParam("description") String description,
			ModelMap modelMap) {
		User user = new User();
		transaction.setId(ticketid);
		user.setId(userid);
		transaction.setUsers(user);
		transaction.setSubject(subject);
		transaction.setDesc(description);
		try {
			if (ticketService.updateByUserService(transaction) != null) {
				return "viewticket.jsp";
			}

		} catch (ValidationException e) {
			e.printStackTrace();
			modelMap.addAttribute("ERROR_MESSAGE", e);
		}
		return "updateticket.jsp";

	}


	@GetMapping("/assignticket")
	public String assignticket(@RequestParam("ticketid") int ticketId, @RequestParam("empid") int empId) {
		Employee emp = new Employee();
		transaction.setId(ticketId);
		emp.setId(empId);
		transaction.setEmployee(emp);
		try {
			ticketService.assignTicketService(transaction);
			return "empviewticket.jsp";
		} catch (ValidatorException e) {
			e.printStackTrace();
			return "assignticket.jsp";

		}
	}

	@GetMapping("/replyticket")
	public String Replyticket(@RequestParam("ticketid") int ticketid, @RequestParam("solution") String solution) {
		transaction.setId(ticketid);
		issue.setTransaction(transaction);
		issue.setSolution(solution);
		try {
			if (ticketService.replyTicketService(issue) != null) {
				return "/viewsolution.jsp";
			}
		} catch (Exception e) {

		}
		return "replyticket.jsp";

	}

	@GetMapping("/empviewticket")
	public String empView(@RequestParam("empid") int empid, ModelMap modelMap) {
		Employee emp = new Employee();
		emp.setId(empid);
		transaction.setEmployee(emp);
		List<Transaction> empTransactionList = ticketService.listByEmpIdService(transaction);
		modelMap.addAttribute("emplist", empTransactionList);
		return "empviewticket.jsp";
	}

	@GetMapping("/empupdate") /* reply.jsp */
	public String updateticket(@RequestParam("ticketid") int ticketId, @RequestParam("empid") int empId,
			@RequestParam("solution") String solution) {
		Employee emp = new Employee();
         emp.setId(empId);
		transaction.setId(ticketId);
		issue.setEmployee(emp);
		issue.setTransaction(transaction);
		issue.setSolution(solution);
		try {
			if (ticketService.updateSolutionService(issue) != null) {
				return ("viewsolution.jsp");
			}
		} catch (Exception e) {
		}
		return ("replyticket.jsp");

	}

	@GetMapping("/viewsolution")
	public String viewsolution(@RequestParam("empId") int empId, ModelMap modelMap) {
		List<Solution> solutionList = ticketService.solutionList(empId);
		modelMap.addAttribute("solutionlist", solutionList);
		return "viewsolution.jsp";
	}

	@GetMapping("/deleteticket")
	public String delete(@RequestParam("empId")int empId,@RequestParam("ticketId")int ticketId)
	{
		Employee emp = new Employee();
		Transaction transaction = new Transaction();
          transaction.setId(ticketId);
          emp.setId(empId);
          transaction.setEmployee(emp);
		try
		{ticketService.delete(empId, ticketId);
		return("success.jsp"); 
		}
		catch(Exception e){
		}
		return ("/deleteticket.jsp");
}
	@GetMapping("/logout")
	public String logout(HttpSession session){
		session.invalidate();
		return ("index.jsp");
		
	}
}
