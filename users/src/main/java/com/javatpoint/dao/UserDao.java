package com.javatpoint.dao;


import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;


import com.javatpoint.beans.User;

public class UserDao {

	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}  
	
	public int save(User u){    
		 String sql = "insert into userinfo(name,email,username,password,cpassword,address)values(?,?,?,?,?,?)";
		  return template.update(sql, new Object[] { u.getName(),u.getEmail(),u.getUsername(),u.getPassword(),u.getCpassword(), u.getAddress() });    
	}
	
	
	
	public int getUserNamePassword(String uname,String pass){ 
	int  value;
	try {
	    String sql="select * from userinfo where username=? and password=?";    
	    template.queryForObject(sql, new Object[]{uname,pass},new BeanPropertyRowMapper<User>(User.class));
	    value=1;
	    return value;
	}catch (Exception e) {
		value=0;
	}

   return value;
  }
	
	
}
