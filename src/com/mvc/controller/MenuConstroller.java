package com.mvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.Map;

import javax.annotation.Resource;

import com.mvc.server.MenuServiceImpl;

@Controller
public class MenuConstroller {
	
	@Resource
	MenuServiceImpl menuServiceImpl;
	
	public MenuConstroller() {}
	
	@RequestMapping(value = "/menu/getMenu")
	@ResponseBody
	public Map<String,Object> getMenu(@RequestParam("account")String account){
		return menuServiceImpl.getMenu(account);
	}
}
