package com.hrm.mapper;

import java.util.List;

import com.hrm.pojo.TrainAgency;

public interface TrainAgencyMapper {

	
	public  List<TrainAgency> findAll();
	
	public TrainAgency findById(String id);
	
	public void save(TrainAgency zhaopin);
	
	public void del(String id);
	
	public void update(TrainAgency zhaopin);

	public List<TrainAgency> findAllSearch(TrainAgency trainagency);

	public TrainAgency findByTel(String contactemail);
}
