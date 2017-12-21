package com.db.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.db.model.Menu;

@Repository
public class MenuDaoImp implements MenuDao {

	@Resource
	private SqlSessionTemplate SqlSessionTemplate;
	
	@Override
	 public List<Menu> getMenu(String account){
		return SqlSessionTemplate.selectList("com.db.dao.MenuDao.getMenu", account);
	}
}