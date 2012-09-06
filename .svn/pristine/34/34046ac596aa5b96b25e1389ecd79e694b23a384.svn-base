package com.hrm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hrm.pojo.Dimission;

public interface LizhiMapper {

	public List<Dimission> findAll();
	public List<Dimission> findBySearch(@Param("name")String name);
	public Dimission findByWorkid(@Param("id")String id);
	public void saveedit(@Param("workid")String workid,@Param("leavedate")String leavedate,@Param("reason")String reason,@Param("approver")String approver);
	public void dellizhi(@Param("id")String id);

}
