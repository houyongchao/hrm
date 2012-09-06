package com.hrm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hrm.pojo.Dimission;
import com.hrm.pojo.Shiyong;
import com.hrm.pojo.Working;

public interface ZhiyuanMapper {

	public List<Working> findZaizhi();
	public List<Working> findByZaizhi(@Param("names")String names,@Param("title")String title,@Param("bumen")String bumen);
	public List<Dimission> findAllDimissions();
	public List<Working> findByshengri(String time);
	public List<Shiyong> findshiyongdaoqi(String time);
	public List<Shiyong> findAllshiyong();
	public List<Shiyong> findRuZhi(@Param("time")String time,@Param("result")String result);
}
