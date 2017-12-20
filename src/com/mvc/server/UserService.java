package com.mvc.server;

import java.util.Map;

public interface UserService{
    
    public Map<String,Object> userLogin(String account, String password);
    public Map<String,Object> getAllUser();
};
