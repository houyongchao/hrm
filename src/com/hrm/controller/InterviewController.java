package com.hrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hrm.pojo.Interview;
import com.hrm.service.InterviewService;
import com.hrm.util.PKUtil;

@Controller
@RequestMapping("/mianshi")
public class InterviewController {

	@Autowired
	private InterviewService interviewService;
	
	@RequestMapping(value="/showAllmianshi",method=RequestMethod.GET)
	public String shwoAll(Model model){
		List<Interview> interviewList = interviewService.findAll();
		model.addAttribute("interviewList",interviewList);
		return "mianshi";
	}
	
	//搜索
		@RequestMapping(value="/search",method=RequestMethod.POST)
		public 	String search(Model model,Interview interview){
			
			List<Interview> interviewList = interviewService.findAllSearch(interview);
			model.addAttribute("interviewList",interviewList);
			return "mianshi";
		}
	
	@RequestMapping("/edit/{id}")
	public String eidt(@PathVariable String id,Model model){
		
		Interview interview = interviewService.findById(id);
		model.addAttribute("interview", interview);
		return "editmianshi";
	}
	
	@RequestMapping("/update")
	public String update(Interview interview,RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("editsuccess", "修改成功");
		interviewService.update(interview);
		return "redirect:/mianshi/showAllmianshi";
	}
	
	@RequestMapping("/add")
	public String add(Model model){
		return "newmianshi";
	}
	
	
	@RequestMapping("/save")
	public String save(Interview interview,RedirectAttributes redirectAttributes){
		interview.setId(PKUtil.getPk());
		redirectAttributes.addFlashAttribute("savesuccess", "保存成功");
		interviewService.save(interview);
		return "redirect:/mianshi/showAllmianshi";
	}
	
	@RequestMapping("/del/{id}")
	public String del(@PathVariable String id,RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("delsuccess", "删除成功");
	
		interviewService.del(id);
		return "redirect:/mianshi/showAllmianshi";
	}
}
