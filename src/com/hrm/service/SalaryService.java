package com.hrm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.mapper.SalaryMapper;
import com.hrm.pojo.Depart;
import com.hrm.pojo.Salary;


@Service
@Transactional
public class SalaryService {

	@Autowired
	private SalaryMapper salaryMapper;
	
	public List<Salary> findAll(){
		return salaryMapper.findAll();
	}
	public List<Salary> findSalaryBysearch(String yuefen,String bumen){
		String departid = salaryMapper.findByDepartname(bumen);
		return salaryMapper.findBySearch(yuefen, departid);
	}
	
}
