package com.hrm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.mapper.CheckMapper;
import com.hrm.pojo.Check;

@Service
@Transactional
public class KaoheService {

	@Autowired
	private CheckMapper mapper;
	
	public List<Check> findAll() {
		return mapper.findAll();
	}

	public Check findById(String id) {
		return mapper.findById(id);
	}

	public void update(Check check) {
		mapper.update(check);
	}

	public void save(Check check) {

		mapper.save(check);
	}

	public void del(String id) {

		mapper.del(id);
	}

	public List<Check> findAllSearch(Check check,String names) {
		return mapper.findAllSearch(check,names);
	}

}
