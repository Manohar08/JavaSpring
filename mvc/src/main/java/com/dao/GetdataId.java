package com.dao;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class GetdataId {
	
	
	public static Blog givedata(int id) {
	ApplicationContext context1 =new ClassPathXmlApplicationContext("com/dao/dao.xml");
    DaoImpl dao=context1.getBean("daoimp",DaoImpl.class);
    Blog blog=dao.getIdData(id);
    		return blog;
	}
   
	public static String ReadMore(String desc) {
		
    String[] result=desc.split(" ");
    if(result.length>10) {
    	String res="";
    	for(int i=0;i<10;i++) {
    		res=res+result[i]+" ";
    	}
    	 return res+"....";
    }
    else {
    	return desc+"....";
    }
	}
	
	
	public static List<Blog> firstpagedata(int offset_value,int count){
		ApplicationContext context1 =new ClassPathXmlApplicationContext("com/dao/dao.xml");
	       DaoImpl dao=context1.getBean("daoimp",DaoImpl.class);
	       List<Blog> al1=dao.show_data(offset_value,count);
	           return al1;
		
	}
	public static int User_info(User_Information user) {
		ApplicationContext context1 =new ClassPathXmlApplicationContext("com/dao/dao.xml");
	       DaoImpl dao=context1.getBean("daoimp",DaoImpl.class);
	       int res=dao.user_insert(user);
	      
		return res;
		
	}
}
