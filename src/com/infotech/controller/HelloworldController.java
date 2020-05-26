package com.infotech.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.infotech.domain.Register;
import com.infotech.service.EmployeeService;

@Controller
@RequestMapping(value = "/")
public class HelloworldController {

	@Autowired
	private EmployeeService empservice;
	public static ArrayList<Register> UserList;
	boolean isEx = false;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(ModelAndView model) {
		Register register = new Register();
		model.addObject("LoginProcess", register);
		model.setViewName("login");
		return model;

	}

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView addEmployee(ModelAndView model) {
		Register register = new Register();

		model.addObject("employee", register);
		model.setViewName("register");
		return model;

	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public ModelAndView deleteEmployee(ModelAndView model) {
		Register register = new Register();
		model.addObject("deleteProcess", register);
		model.setViewName("delete");
		return model;

	}

	@RequestMapping(value = "/deposit", method = RequestMethod.POST)
	public ModelAndView bankDetails(ModelAndView model) {
		Register register = new Register();
		model.addObject("depositProcess", register);
		model.setViewName("deposit");
		return model;

	}

	@RequestMapping(value = "/depositProcess", method = RequestMethod.POST)
	public ModelAndView depositProcess(@ModelAttribute("depositProcess") Register register) {

		float balance = register.getBalance();
		int userId = register.getUserId();
		String password = register.getPassword();
		int size = UserList.size();
		for (int i = 0; i < size; i++) {
			Register register1 = UserList.get(i);
			System.out.println(register1.getUserId() == userId);
			System.out.println(register1.getPassword().equals(password));
			if (register1.getUserId() == userId && register1.getPassword().equals(password)) {
				float balance1 = UserList.set(i, register1).getBalance();
				balance1 += balance;
				UserList.set(i, register1).setBalance(balance1);
				return new ModelAndView("depositSuccess", "hello", "deposit success");

			}
		}
		return new ModelAndView("depositfail", "hello", "deposit fail");

	}

	@RequestMapping(value = "/withdraw", method = RequestMethod.POST)
	public ModelAndView withdraw(ModelAndView model) {
		Register register = new Register();
		model.addObject("withdrawProcess", register);
		model.setViewName("withdraw");
		return model;

	}

	@RequestMapping(value = "/withdrawProcess", method = RequestMethod.POST)
	public ModelAndView withdrawProcess(@ModelAttribute("withdrawProcess") Register register) {

		float balance = register.getBalance();
		int userId = register.getUserId();
		String password = register.getPassword();
		int size = UserList.size();
		for (int i = 0; i < size; i++) {
			Register register1 = UserList.get(i);
			System.out.println(register1.getUserId() == userId);
			System.out.println(register1.getPassword().equals(password));
			if (register1.getUserId() == userId && register1.getPassword().equals(password)) {
				float balance1 = UserList.set(i, register1).getBalance();
				balance1 -= balance;
				UserList.set(i, register1).setBalance(balance1);
				return new ModelAndView("withdrawSuccess", "hello", "withdraw success");

			}
		}
		return new ModelAndView("withdrawFail", "hello", "withdraw fail");

	}

	@RequestMapping(value = "/DepositFail", method = RequestMethod.POST)
	public String DepositFail(@ModelAttribute("redirectLogin") Register register) {
		return "login";

	}

	@RequestMapping(value = "/DepositSuccess", method = RequestMethod.POST)
	public String DepositSuccess() {
		return "login";

	}

	@RequestMapping(value = "/WithdrawSuccess", method = RequestMethod.POST)
	public String withdrawSuccess() {
		return "login";

	}

	@RequestMapping(value = "/WithdrawFail", method = RequestMethod.POST)
	public String withdrawFail() {
		return "login";

	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView updateEmployee(ModelAndView model) {
		Register register = new Register();
		model.addObject("UpdateProcess", register);
		model.setViewName("update");
		return model;

	}

	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute("home") Register register) {
		return "redirect:/";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logoutEmployee(@ModelAttribute("logout") Register register) {
		return "redirect:/";

	}

	@RequestMapping(value = "/tryonce", method = RequestMethod.POST)
	public String backUpdate() {
		return "loginSuccess";

	}

	@RequestMapping(value = "/redirectLogin", method = RequestMethod.POST)
	public String cancelUpdate(@ModelAttribute("redirectLogin") Register register) {
		return "loginSuccess";

	}

	@RequestMapping(value = "/back", method = RequestMethod.POST)
	public String backDelete() {
		return "loginSuccess";

	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@Valid @ModelAttribute("employee") Register register, BindingResult result) {

		if (result.hasErrors()) {
			return new ModelAndView("register");
		}
		UserList = empservice.save(register);

		
		
		int size = UserList.size();
		int j = 0;
		for (int i = 2; i < size + 1; i++) {
			int userId = register.getUserId();
			Register register1 = UserList.get(j);
			System.out.println(register.getUserId() + "id" + userId);
			if (register1.getUserId() == userId) {

				UserList.remove(i);
				System.out.println(size);
				return new ModelAndView("welcome", "username", register.getUsername() + "already exists");
			}
			j++;
		}
		return new ModelAndView("welcome", "username", "welcome" + register.getUsername());
	}

	@RequestMapping(value = "/LoginProcess", method = RequestMethod.POST)
	public ModelAndView loginEmployee(HttpServletRequest req) {
		Register register1 = new Register();
		ModelAndView model = new ModelAndView();
		int userId =Integer.parseInt(req.getParameter("userId"));
		System.out.println("the username is " + userId);
		String password = req.getParameter("password");
		int size = UserList.size();

		for (int i = 0; i < size; i++) {

			register1 = UserList.get(i);
			if (register1.getUserId() == userId && register1.getPassword().equals(password)) {
				model.addObject("register",register1);
				model.setViewName("loginSuccess");
				return model;
			}
		}
		
		return new ModelAndView("LoginFail", "username", "Useername or password is not correct");

	}

	@RequestMapping(value = "/deleteProcess", method = RequestMethod.POST)
	public String deleteEmployee(@ModelAttribute("deleteProcess") Register register) {
		int userId = register.getUserId();
		int size = UserList.size();
		for (int i = 0; i < size; i++) {

			String password = register.getPassword();
			System.out.println("username = " + userId + "Password" + password);
			Register register1 = UserList.get(i);
			System.out.println("list password = " + register1.getPassword());

			if (register1.getUserId() == userId && register1.getPassword().equals(password)) {

				UserList.remove(i);
				System.out.println(register.getUsername());
				System.out.println(register1.getUserId() + "password=" + register1.getPassword());
				isEx = true;
				return "redirect:/";

			} else {

			}
		}

		return "deleteProcess";
//		}
	}

	@RequestMapping(value = "/UpdateProcess", method = RequestMethod.POST)
	public ModelAndView updateProcess(@ModelAttribute("UpdateProcess") Register register) {
		// int index = UserList.indexOf(register.getUserId());

		int userId = register.getUserId();
		String password = register.getPassword();
		String UserName = register.getUsername();
		String email = register.getEmail();
		String address = register.getAddress();
		String phone = register.getPhone();
		int size = UserList.size();

		for (int i = 0; i < size + 1; i++) {
			Register register1 = UserList.get(i);

			System.out.println(register.getUserId() + "id" + userId);
			if (register1.getUserId() == userId && register1.getPassword().equals(password)) {

				register1.setUserId(userId);
				register1.setPassword(password);
				register1.setUsername(UserName);
				register1.setEmail(email);
				register1.setAddress(address);
				register1.setEmail(email);
				register1.setPhone(phone);

				UserList.set(i, register1).setUsername(UserName);
				UserList.set(i, register1).setEmail(email);
				UserList.set(i, register1).setAddress(address);
				UserList.set(i, register1).setPhone(phone);

				System.out.println(register1.getEmail());
				System.out.println(size);
				return new ModelAndView("UpdateProcess", "UserId", userId + "is updated successfully ");
			} else {
				return new ModelAndView("UpdateProcess", "UserId", "UserId or password may be incorrrect");

			}
		}
		return null;

	}

}
