package com.hrm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.mapper.InterviewMapper;
import com.hrm.pojo.Interview;

@Service
@Transactional
public class InterviewService {

	@Autowired
	private InterviewMapper mapper;
	
	public List<Interview> findAll() {
		return mapper.findAll();
	}

	public Interview findById(String id) {
		return mapper.findById(id);
	}

	public void update(Interview interview) {

		mapper.update(interview);
	}

	public void save(Interview interview) {

		mapper.save(interview);
	}

	public void del(String id) {

		mapper.del(id);
	}

	public List<Interview> findAllSearch(Interview interview) {
		return mapper.findAllSearch(interview);
	}

}
