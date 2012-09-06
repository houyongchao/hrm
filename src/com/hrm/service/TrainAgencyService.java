package com.hrm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.mapper.TrainAgencyMapper;
import com.hrm.pojo.TrainAgency;

@Service
@Transactional
public class TrainAgencyService {

	@Autowired
	private TrainAgencyMapper mapper;
	
	public List<TrainAgency> findAll() {
		return mapper.findAll();
	}

	public TrainAgency findById(String id) {
		return mapper.findById(id);
	}

	public void update(TrainAgency trainagency) {

		mapper.update(trainagency);
	}

	public void save(TrainAgency trainagency) {

		mapper.save(trainagency);
	}

	public List<TrainAgency> findAllSearch(TrainAgency trainagency) {
		return mapper.findAllSearch(trainagency);
	}

	public TrainAgency findByTel(String contactemail) {
		
		return mapper.findByTel(contactemail);
	}

}
