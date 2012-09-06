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
import com.hrm.service.TrainAgencyService;
import com.hrm.util.PKUtil;

@Controller
@RequestMapping("/peixunjigou")
public class TrainningagencyController {

	@Autowired
	private TrainAgencyService service;
	
	@RequestMapping(value="/showAlljigou",method=RequestMethod.GET)
	public String showAll(Model model){
		
		List<TrainAgency> trainAgencyList = service.findAll();
		model.addAttribute("trainAgencyList", trainAgencyList);
		return "showAllpeixunjigou";
	}
	
	
	//搜索
		@RequestMapping(value="/search",method=RequestMethod.POST)
		public String search(Model model,TrainAgency trainagency){
			
			
			List<TrainAgency> trainAgencyList = service.findAllSearch(trainagency);
		
			model.addAttribute("trainAgencyList", trainAgencyList);
			return "showAllpeixunjigou";
		}
	
	@RequestMapping("/edit/{id}")
	public String eidt(@PathVariable String id,Model model){
		
		TrainAgency trainagency = service.findById(id);
		model.addAttribute("jigou", trainagency);
		return "editpeixunjigou";
	}
	
	@RequestMapping("/update")
	public String update(TrainAgency trainagency,RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("editsuccess", "修改成功");
		service.update(trainagency);
		return "redirect:/peixunjigou/showAlljigou";
	}
	
	@RequestMapping("/add")
	public String add(){
		return "newpeixunjigou";
	}
	
	@RequestMapping("/save")
	public String save(TrainAgency trainagency,RedirectAttributes redirectAttributes){
		
		trainagency.setId(PKUtil.getPk());
		redirectAttributes.addFlashAttribute("savesuccess", "保存成功");
		service.save(trainagency);
		return "redirect:/peixunjigou/showAlljigou";
	}
}
