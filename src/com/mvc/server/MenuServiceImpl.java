package com.mvc.server;

import java.util.HashMap;
import java.util.Map;
import java.util.List;

import javax.annotation.Resource;  

import org.springframework.stereotype.Service;  

import com.db.dao.MenuDao;
import com.db.model.Menu;
import com.mvc.server.MenuService;
 
@Service
public class MenuServiceImpl implements MenuService {  
			
   @Resource  
   private MenuDao menuDao;  
   //@Override  
    public Map<String,Object> getMenu(String account) {  
      // TODO Auto-generated method stub  
    	List<Menu> menuList = this.menuDao.getMenu(account);
    	Map<String,Object> map =  new HashMap<String,Object>();
		map.put("menuList", menuList);
		return map;  
   }  
}  
