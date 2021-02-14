package com.dao;

import java.util.List;

public interface Dao {
	public int insert(Blog blog);
	public List<Blog> show_data(int offset,int count);
	public  Blog getIdData(int id);
	public int user_insert(User_Information user);
    public int update_data(String heading,String paragraph,int id);

}
