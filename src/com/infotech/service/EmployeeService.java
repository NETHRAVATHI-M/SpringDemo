package com.infotech.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.infotech.domain.Register;

@Service
public class EmployeeService {
	
	public static ArrayList <Register> UserList  = new ArrayList <Register>();

	public String welcomeMessage(){
		return "Welcome to Spring MVC World!!!";
	}

	public Object welcomeAgainMessage() {
		return "Welcome again to Spring MVC World!!!";
	}

	public ArrayList<Register> list() {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Register> save(Register register) {
		UserList.add(register);
		//System.out.println(UserList.get(register.getUserId()));
		return UserList;
		}
}
