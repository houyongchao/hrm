package com.hrm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hrm.pojo.Account;

public interface AccountMapper {

	public Account findByName(@Param("username")String username);
}
