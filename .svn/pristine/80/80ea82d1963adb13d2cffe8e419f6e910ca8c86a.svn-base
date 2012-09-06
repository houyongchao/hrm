package com.hrm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.mapper.DimissionMapper;
import com.hrm.mapper.LizhiMapper;
import com.hrm.mapper.WorkingMapper;
import com.hrm.pojo.Dimission;
import com.hrm.pojo.Working;
import com.hrm.util.PKUtil;

@Service
@Transactional
public class LizhiService {

	@Autowired
	private LizhiMapper lizhiMapper;
	@Autowired
	private DimissionMapper dimissionMapper;
	@Autowired
	private WorkingMapper workingMapper;
	
	public void savelizhi(String name,Dimission dimission){
		Working w = workingMapper.findByName(name);
		
		Dimission d = new Dimission();
		d.setId(PKUtil.getPk());
		d.setApprover(dimission.getApprover());
		d.setLeavedate(dimission.getLeavedate());
		d.setReason(dimission.getReason());
		d.setWork(w);
		dimissionMapper.save(d);
	}
	
	public List<Dimission> findAll(){
		return lizhiMapper.findAll();
	}
	public List<Dimission> findBySearch(String name){
		return lizhiMapper.findBySearch(name);
	}
	public Dimission findByWorkid(String id){
		return lizhiMapper.findByWorkid(id);
	}
	public void saveedit(String workid,Dimission dimission){
		lizhiMapper.saveedit(workid, dimission.getLeavedate(), dimission.getReason(), dimission.getApprover());
	}
	public void dellizhi(String id){
		lizhiMapper.dellizhi(id);
	}
}
