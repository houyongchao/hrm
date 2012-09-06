package com.hrm.mapper;

import java.util.List;

import com.hrm.pojo.Vacation;
import com.hrm.pojo.VacationDto;

public interface VacationMapper {

	
	public  List<Vacation> findAll();
	
	public Vacation findById(String id);
	
	public void save(Vacation vacation);
	
	public void del(String id);
	
	public void update(Vacation vacation);

	public List<Vacation> findAllSearch(VacationDto vacationDto);
}
