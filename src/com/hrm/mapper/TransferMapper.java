package com.hrm.mapper;

import java.util.List;

import com.hrm.pojo.Transfer;
import com.hrm.pojo.TransferDto;

public interface TransferMapper {

	
	public  List<Transfer> findAll();
	
	public Transfer findById(String id);
	
	public void save(Transfer transfer);
	
	public void del(String id);
	
	public void update(Transfer transfer);

	public List<Transfer> findAllSearch(TransferDto transferDto);
}
