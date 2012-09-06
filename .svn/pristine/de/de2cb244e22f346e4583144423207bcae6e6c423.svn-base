package com.hrm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hrm.pojo.Check;

public interface CheckMapper {

	
	public  List<Check> findAll();
	
	public Check findById(String id);
	
	public void save(Check check);
	
	public void del(String id);
	
	public void update(Check check);

	public List<Check> findAllSearch(@Param("check")Check check,@Param("names")String names);
}
