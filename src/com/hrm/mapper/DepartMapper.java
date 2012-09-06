package com.hrm.mapper;

import java.util.List;

import com.hrm.pojo.Depart;

public interface DepartMapper {

	public List<Depart> findAll();
	public Depart findBydepartEnglishname(String englishname);
}
