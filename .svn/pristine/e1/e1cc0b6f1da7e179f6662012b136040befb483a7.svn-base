package com.hrm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.mapper.ZhaopinMapper;
import com.hrm.pojo.Zhaopin;
import com.hrm.pojo.ZhaopinDto;

@Service
@Transactional
public class ZhaopinService {

	@Autowired
	private ZhaopinMapper mapper;
	
	public List<Zhaopin> findAll() {
		return mapper.findAll();
	}

	public Zhaopin findById(String id) {
		return mapper.findById(id);
	}

	public void update(Zhaopin zhaopin) {

		mapper.update(zhaopin);
	}

	public void save(Zhaopin zhaopin) {

		mapper.save(zhaopin);
	}

	public void del(String id) {

		mapper.del(id);
	}

	public List<Zhaopin> findAllSearch(ZhaopinDto zhaopinDto) {
		return mapper.findAllSearch(zhaopinDto);
	}

}
