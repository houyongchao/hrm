package com.hrm.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.mapper.WorkingMapper;
import com.hrm.mapper.ZhiyuanMapper;
import com.hrm.pojo.Dimission;
import com.hrm.pojo.Shiyong;
import com.hrm.pojo.Working;
import com.hrm.util.DateUtil;

@Service
@Transactional
public class WorkingService {

	@Autowired
	private WorkingMapper workmapper;
	@Autowired
	private ZhiyuanMapper zaiyuanmapper;
	
	public void updateWorker(String name){
		String time = DateUtil.getYMD();
		workmapper.updateWorker(name, time);
	}
	
	public List<Working> findZaiZhi(){
		return zaiyuanmapper.findZaizhi();
	}
	public List<Working> findAll() {
		return workmapper.findAll();
	}

	public Working findByName(String names) {
		return workmapper.findByName(names);
	}
	public List<Working> findzaizhiBysearch(String names,String title,String bumen){
		return zaiyuanmapper.findByZaizhi(names,title,bumen);
	}
	public List<Dimission> findDimissions(){
		List<Dimission> list = zaiyuanmapper.findAllDimissions();
		List<Dimission> list2 = new ArrayList<Dimission>();
		for (Dimission dimission : list) {
			String leavedate = dimission.getLeavedate();
			String year = leavedate.substring(0, 4);
			String month = leavedate.substring(5, 7);
			
			if(DateUtil.getYYYY().equals(year)){
				if(DateUtil.getMM().equals(month)){
					list2.add(dimission);
				}
			}
		}
		return list2;
	}
	public List<Working> findByshengri(){
		String time = "-"+DateUtil.getMM()+"-";
		return zaiyuanmapper.findByshengri(time);
	}
	public List<Dimission> findAllDimissions(){
		return zaiyuanmapper.findAllDimissions();
	}
	public List<Shiyong> findShiYongDaoQi(){
		String time = DateUtil.getYYYY()+"-"+DateUtil.getMM();
		return zaiyuanmapper.findshiyongdaoqi(time);
	}
	public List<Shiyong> findAllshiyong(){
		return zaiyuanmapper.findAllshiyong();
	}
	public List<Shiyong> findRuzhi(){
		String time = DateUtil.getYYYY()+"-"+DateUtil.getMM();
		return zaiyuanmapper.findRuZhi(time, "录用");
	}
	
}
