package com.db.model;

import java.sql.Timestamp;

public class Menu {  
    //实体类的属性和表的字段名称一一对应
    private String menu_id;
	private String menu_name;
    private String menu_parent_id;
    private int menu_type;
    private Timestamp menu_create_time;
    private Timestamp menu_update_time;
    private String menu_creater;
    private String menu_updater;
    private int menu_jurisdiction;
    private int menu_invoke;
    private String menu_link;
    private String menu_linkclass;
    private String menu_seq;
    
    public String getMenu_id() {
		return menu_id;
	}
	public void setMenu_id(String menu_id) {
		this.menu_id = menu_id;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getMenu_parent_id() {
		return menu_parent_id;
	}
	public void setMenu_parent_id(String menu_parent_id) {
		this.menu_parent_id = menu_parent_id;
	}
	public int getMenu_type() {
		return menu_type;
	}
	public void setMenu_type(int menu_type) {
		this.menu_type = menu_type;
	}
	public Timestamp getMenu_create_time() {
		return menu_create_time;
	}
	public void setMenu_create_time(Timestamp menu_create_time) {
		this.menu_create_time = menu_create_time;
	}
	public Timestamp getMenu_update_time() {
		return menu_update_time;
	}
	public void setMenu_update_time(Timestamp menu_update_time) {
		this.menu_update_time = menu_update_time;
	}
	public String getMenu_creater() {
		return menu_creater;
	}
	public void setMenu_creater(String menu_creater) {
		this.menu_creater = menu_creater;
	}
	public String getMenu_updater() {
		return menu_updater;
	}
	public void setMenu_updater(String menu_updater) {
		this.menu_updater = menu_updater;
	}
	public int getMenu_jurisdiction() {
		return menu_jurisdiction;
	}
	public void setMenu_jurisdiction(int menu_jurisdiction) {
		this.menu_jurisdiction = menu_jurisdiction;
	}
	public int getMenu_invoke() {
		return menu_invoke;
	}
	public void setMenu_invoke(int menu_invoke) {
		this.menu_invoke = menu_invoke;
	}
	public String getMenu_link() {
		return menu_link;
	}
	public void setMenu_link(String menu_link) {
		this.menu_link = menu_link;
	}
	public String getMenu_linkclass() {
		return menu_linkclass;
	}
	public void setMenu_linkclass(String menu_linkclass) {
		this.menu_linkclass = menu_linkclass;
	}
	public String getMenu_seq() {
		return menu_seq;
	}
	public void setMenu_seq(String menu_seq) {
		this.menu_seq = menu_seq;
	}
}
