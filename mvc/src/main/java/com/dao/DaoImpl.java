package com.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class DaoImpl implements Dao {
     private JdbcTemplate jdbctemp;
	public JdbcTemplate getJdbctemp() {
		return jdbctemp;
	}
	public void setJdbctemp(JdbcTemplate jdbctemp) {
		this.jdbctemp = jdbctemp;
	}
	
	public int insert(Blog blog) {
		// TODO Auto-generated method stub
		String query="insert into tech_blogs values(default,?,?,?)";
		
		String image=blog.getBlog_image();
		String head=blog.getBlog_Heading();
		String para=blog.getBlog_paragraph();
		int result=this.jdbctemp.update(query, image,head,para);
		return result;
		
	}
	
	public Blog getIdData(int id) {
	         String query="select * from tech_blogs where blog_id=?";
	            
	         
	         
	        Blog blog= this.jdbctemp.queryForObject(query, new rowmap(),id);
	         
		return blog;
	}
	public int user_insert(User_Information user) {
          String query="insert into user_info values(default,?,?,?)";
          String email=user.getUser_email();
          String name=user.getUser_name();
          String textarea=user.getUser_textarea();
          
    int result=      this.jdbctemp.update(query,email,name,textarea);
		return result;
	}
	public List<Blog> show_data(int offset, int count) {
		
		 String query="select * from tech_blogs order by blog_id desc limit " +offset+","+count;
         RowMapper<Blog> rowm=new rowmap();
     List<Blog>  bl1=this.jdbctemp.query(query, rowm);
         
		return  bl1;
	}
	public int update_data(String heading, String paragraph, int id) {
             String query="update tech_blogs set blog_heading=?,blog_paragraph=? where blog_id=?";
             
        int up=this.jdbctemp.update(query,heading,paragraph,id);
		return up;
	}
	
	

}
