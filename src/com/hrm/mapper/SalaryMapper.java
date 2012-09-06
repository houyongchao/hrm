package com.hrm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hrm.pojo.Salary;

public interface SalaryMapper {

	public List<Salary> findAll();
	public float findByDepartid(String id);
	public List<Salary> findByDepartid2(String id);
	public String findByDepartname(String name);

	public List<Salary> findBySearch(@Param("yuefen") String yuefen,@Param("departid") String departid);
	
}
