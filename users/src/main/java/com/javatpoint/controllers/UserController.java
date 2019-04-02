package com.javatpoint.controllers;





import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.javatpoint.beans.User;
import com.javatpoint.dao.UserDao;



@Controller
public class UserController {
	
@Autowired   	
UserDao dao;

@RequestMapping("/registrationform")
	 public String showform(Model m){    
	          
	        return "registrationform";   
	    }




@RequestMapping(value="/save",method = RequestMethod.POST)    
public String save(@ModelAttribute("user") User user,Model m){ 
	
    int i=dao.save(user); 
    
    if(i>0) {
    	
        String msg="your data have saved Successfully.";  
        m.addAttribute("message", msg);  
        return "viewpage";
        
    }  else  { 
    	
        String msg="your data have not saved Successfully."; 
        m.addAttribute("message", msg);  
        return "viewpage";  
        
    }  
    
} 



@RequestMapping("/login")
public String loginform(Model m){    
         
       return "login";   
   }



@RequestMapping(value="/loginVerify",method = RequestMethod.POST)
public String loginVerify( HttpServletRequest req, Model m){ 
	String uname=req.getParameter("username");
	String pass=req.getParameter("password");
	
	int value = dao.getUserNamePassword(uname,pass); 
    if(value>0) {
    	
    	String msg="Welcome. you are login Successfully.";
        m.addAttribute("message", msg);  
         
    }else {
    	
        String msg="Sorry, You entered an incorrect username & password.";  
        m.addAttribute("message", msg);  
        	
    }
    return "viewpage";    
}


}
