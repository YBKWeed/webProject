package com.inc.vo;

public class UsersVo {
	int id;
	String id2, name, password;
	
	public UsersVo(int id, String id2, String name, String password){
		this.id=id;
		this.id2=id2;
		this.name=name;
		this.password=password;
	}
	
	public int getId() {
		return id;
	}

	public String getId2() {
		return id2;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}
}
