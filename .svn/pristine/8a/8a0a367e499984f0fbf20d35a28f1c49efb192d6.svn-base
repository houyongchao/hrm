package com.hrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hrm.pojo.Dimission;
import com.hrm.pojo.Shiyong;
import com.hrm.pojo.Working;
import com.hrm.service.WorkingService;

@Controller
@RequestMapping("/people")
public class ZhiyuanController {

	@Autowired
	private WorkingService workingService;
	
	@RequestMapping("")
	public String list(Model model){
		List<Working> zaizhiWorking = workingService.findZaiZhi();
		model.addAttribute("zaizhiWorking", zaizhiWorking);
		model.addAttribute("size", zaizhiWorking.size());
		return "zhiyuan-zaizhirenyuan";
	}
	@RequestMapping(value="/zaizhisearch",method=RequestMethod.POST)
	public String zaizhisearch(String names,String title,String bumen,Model model){
		List<Working> list = workingService.findzaizhiBysearch(names,title,bumen);
		model.addAttribute("zaizhiWorking", list);
		return "zhiyuan-zaizhirenyuan";
	}
	@RequestMapping("/benyuelizhi")
	public String benYueLizhi(Model model){
		List<Dimission> list = workingService.findDimissions();
		model.addAttribute("size", list.size());
		model.addAttribute("dimissionList", list);
		return "zhiyuan-benyuelizhirenshu";
	}
	@RequestMapping("/birthday")
	public String shengri(Model model){
		List<Working> list = workingService.findByshengri();
		model.addAttribute("shengriList", list);
		model.addAttribute("size", list.size());
		return "zhiyuan-benyueshengri";
	}
	@RequestMapping("/lizhi")
	public String lizhi(Model model){
		List<Dimission> list = workingService.findAllDimissions();
		model.addAttribute("dimissionList", list);
		model.addAttribute("size", list.size());
		return "zhiyuan-lizhi";
	}
	@RequestMapping("/shiyongdaoqi")
	public String shiyongdaoqi(Model model){
		List<Shiyong> list = workingService.findShiYongDaoQi();
		model.addAttribute("daoqiList", list);
		model.addAttribute("size", list.size());
		return "zhiyuan-benyueshiyongdaoqi";
	}
	@RequestMapping("/shiyongrenyuan")
	public String shiyongrenyuan(Model model){
		List<Shiyong> list = workingService.findAllshiyong();
		model.addAttribute("shiyongList", list);
		model.addAttribute("size", list.size());
		return "zhiyuan-shiyongrenyuan";
	}
	@RequestMapping("/ruzhirenyuan")
	public String ruzhirenyuan(Model model){
		List<Shiyong> list = workingService.findRuzhi();
		model.addAttribute("ruzhiList", list);
		model.addAttribute("size", list.size());
		return "zhiyuan-ruzhirenyuan";
	}
}
