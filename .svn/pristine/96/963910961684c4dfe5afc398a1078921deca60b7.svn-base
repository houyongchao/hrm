package com.hrm.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.mapper.AccountMapper;
import com.hrm.pojo.Account;

@Service
@Transactional
public class AccountService {

	@Autowired
	private AccountMapper accountMapper;
	
	public Account findByName(String username){
		return accountMapper.findByName(username);
	}
	
}
