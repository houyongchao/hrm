package com.hrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hrm.pojo.TrainAgency;
import com.hrm.pojo.Trainning;
import com.hrm.pojo.Working;
import com.hrm.service.TrainAgencyService;
import com.hrm.service.TrainningService;
import com.hrm.service.WorkingService;
import com.hrm.util.PKUtil;

@Controller
@RequestMapping("/peixunkecheng")
public class TrainningController {

	@Autowired
	private TrainningService service;
	
	@Autowired
	private WorkingService workService;
	
	@Autowired
	private TrainAgencyService trainAgencyservice;
	
	@RequestMapping(value="/showAllkecheng",method=RequestMethod.GET)
	public String showAll(Model model){
		
		List<Trainning> trainninglist = service.findAll();
		
		model.addAttribute("trainningList",trainninglist);
		return "showAllkecheng";
	}
	
	
	//搜索
		@RequestMapping(value="/search",method=RequestMethod.POST)
		public 	String search(Model model,Trainning trainning){
			
			List<Trainning> trainninglist = service.findAllSearch(trainning);
			model.addAttribute("trainningList",trainninglist);
			return "showAllkecheng";
		}
	
	@RequestMapping("/edit/{id}")
	public String eidt(@PathVariable String id,Model model){
		
		Trainning trainning = service.findById(id);
		model.addAttribute("trainning", trainning);
		return "editpeixunkecheng";
	}
	
	@RequestMapping("/update")
	public String update(Trainning trainning,RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("editsuccess", "修改成功");
		service.update(trainning);
		return "redirect:/peixunkecheng/showAllkecheng";
	}
	
	
	@RequestMapping("/add")
	public String add(Model model){
		List<Working> wlist = workService.findAll();
		model.addAttribute("wlist", wlist);
		
		List<TrainAgency> agencylist = trainAgencyservice.findAll();
		model.addAttribute("tglist", agencylist);
		return "newpeixunkecheng";
	}
	
	
	@RequestMapping("/save")
	public String save(Trainning trainning,String names,String contactemail,RedirectAttributes redirectAttributes){
		Working work = workService.findByName(names);
		System.out.println(contactemail);
		TrainAgency trainagency = trainAgencyservice.findByTel(contactemail);
		trainning.setId(PKUtil.getPk());
		trainning.setWorker(work);
		trainning.setAgency(trainagency);
		redirectAttributes.addFlashAttribute("savesuccess", "保存成功");
		service.save(trainning);
		return "redirect:/peixunkecheng/showAllkecheng";
	}
	
	
	@RequestMapping("/del/{id}")
	public String del(@PathVariable String id,RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("delsuccess", "删除成功");
		service.del(id);
		return "redirect:/peixunkecheng/showAllkecheng";
	}
}
