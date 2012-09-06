package com.hrm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.mapper.RewardsMapper;
import com.hrm.pojo.Rewards;
import com.hrm.pojo.RewardsDto;

@Service
@Transactional
public class JiangfaService {

	@Autowired
	private RewardsMapper mapper;
	
	public List<Rewards> findAll() {
		return mapper.findAll();
	}

	public Rewards findById(String id) {
		return mapper.findById(id);
	}

	public void update(Rewards rewards) {

		mapper.update(rewards);
	}

	public void save(Rewards rewards) {
		mapper.insert(rewards);
	}

	public void del(String id) {
		mapper.del(id);
	}

	public List<Rewards> findAllSearch(Rewards rewards, String names,RewardsDto rewardsDto) {
	
		return mapper.findAllSearch(rewardsDto);
	}

}
