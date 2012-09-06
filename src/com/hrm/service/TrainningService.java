package com.hrm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.mapper.TrainningMapper;
import com.hrm.pojo.Trainning;

@Service
@Transactional
public class TrainningService {

	@Autowired
	private TrainningMapper mapper;
	
	public List<Trainning> findAll() {
		
		return mapper.findAll();
	}

	public Trainning findById(String id) {
		return mapper.findById(id);
	}

	public void update(Trainning trainning) {

		mapper.update(trainning);
	}

	public void save(Trainning trainning) {

		mapper.save(trainning);
	}

	public void del(String id) {

		mapper.del(id);
	}

	public List<Trainning> findAllSearch(Trainning trainning) {
		return mapper.findAllSearch(trainning);
	}

}
