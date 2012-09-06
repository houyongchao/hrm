package com.hrm.mapper;

import java.util.List;

import com.hrm.pojo.Zhaopin;
import com.hrm.pojo.ZhaopinDto;

public interface ZhaopinMapper {

	
	public  List<Zhaopin> findAll();
	
	public Zhaopin findById(String id);
	
	public void save(Zhaopin zhaopin);
	
	public void del(String id);
	
	public void update(Zhaopin zhaopin);

	public List<Zhaopin> findAllSearch(ZhaopinDto zhaopinDto);
}
