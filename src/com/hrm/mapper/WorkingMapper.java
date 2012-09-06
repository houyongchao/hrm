package com.hrm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hrm.pojo.Working;

public interface WorkingMapper {

	public List<Working> findAll();

	public Working findByName(String names);
	public void updateWorker(@Param("name")String name,@Param("time")String time);
}
