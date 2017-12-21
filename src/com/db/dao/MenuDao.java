package com.db.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.db.model.Menu;

@MapperScan
public interface MenuDao {
    public List<Menu> getMenu(String account);
}
