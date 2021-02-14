package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class rowmap implements  RowMapper<Blog>{

	public Blog mapRow(ResultSet rs, int rowNum) throws SQLException {
		     Blog blog=new Blog();
		     blog.setBlog_id(rs.getInt(1));
		     blog.setBlog_image(rs.getString(2));
		     blog.setBlog_Heading(rs.getString(3));
		     blog.setBlog_paragraph(rs.getString(4));
		     
		return blog;
	}
	

}
