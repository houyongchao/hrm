package com.hrm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.mapper.VacationMapper;
import com.hrm.pojo.Vacation;
import com.hrm.pojo.VacationDto;

@Service
@Transactional
public class VacationService {

	@Autowired
	private VacationMapper mapper;
	
	public List<Vacation> findAll() {
		return mapper.findAll();
	}

	public Vacation findById(String id) {
		return mapper.findById(id);
	}

	public void update(Vacation vacation) {

		mapper.update(vacation);
	}

	public void save(Vacation vacation) {

		mapper.save(vacation);
	}

	public void del(String id) {

		mapper.del(id);
	}

	public List<Vacation> findAllSearch(VacationDto vacationDto) {
		return mapper.findAllSearch(vacationDto);
	}

}
