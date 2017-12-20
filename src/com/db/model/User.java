package com.db.model;

import java.sql.Timestamp;

public class User {
	
    //实体类的属性和表的字段名称一一对应
    private String user_id;
    private String user_name;
    private String user_account;
    private String user_password;
    private String user_phone;
    private int user_delete;
    private Timestamp user_createtime;
    private Timestamp user_updatetime;
    private String user_operator;
    private String user_role_id;
    private String user_company_name;
    
    public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
			
	public String getUser_account() {
		return user_account;
	}
	public void setUser_account(String user_account) {
		this.user_account = user_account;
	}
	
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	
	public String User_company_name() {
		return user_company_name;
	}
	public void setUser_company_name(String user_company_name) {
		this.user_company_name = user_company_name;
	}
	
	public String getUser_role_id() {
		return user_role_id;
	}
	public void setUser_role_id(String user_role_id) {
		this.user_role_id = user_role_id;
	}
	
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public int getUser_delete() {
		return user_delete;
	}
	public void setUser_delete(int user_delete) {
		this.user_delete = user_delete;
	}
	public Timestamp getUser_createtime() {
		return user_createtime;
	}
	public void setUser_createtime(Timestamp user_createtime) {
		this.user_createtime = user_createtime;
	}
	public Timestamp getUser_updatetime() {
		return user_updatetime;
	}
	public void setUser_updatetime(Timestamp user_updatetime) {
		this.user_updatetime = user_updatetime;
	}
	public String getUser_operator() {
		return user_operator;
	}
	public void setUser_operator(String user_operator) {
		this.user_operator = user_operator;
	}
	
    
}
