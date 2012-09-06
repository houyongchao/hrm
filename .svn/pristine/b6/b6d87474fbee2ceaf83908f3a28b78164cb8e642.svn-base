package com.hrm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.mapper.TransferMapper;
import com.hrm.pojo.Transfer;
import com.hrm.pojo.TransferDto;

@Service
@Transactional
public class TransferService {

	@Autowired
	private TransferMapper mapper;
	
	public List<Transfer> findAll() {
		return mapper.findAll();
	}

	public Transfer findById(String id) {
		return mapper.findById(id);
	}

	public void update(Transfer transfer) {

		mapper.update(transfer);
	}

	public void save(Transfer transfer) {

		mapper.save(transfer);
	}

	public void del(String id) {

		mapper.del(id);
	}

	public List<Transfer> findAllSearch(TransferDto transferDto) {
		return mapper.findAllSearch(transferDto);
	}

}
