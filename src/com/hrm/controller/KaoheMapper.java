package com.hrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hrm.pojo.Check;
import com.hrm.pojo.Working;
import com.hrm.service.KaoheService;
import com.hrm.service.WorkingService;
import com.hrm.util.PKUtil;

@Controller
@RequestMapping("/kaohe")
public class KaoheMapper {

	@Autowired
	private KaoheService kaoheService;
	
	@Autowired
	private WorkingService workService;
	
	@RequestMapping(value="/showAllkaohe",method=RequestMethod.GET)
	public String showAll(Model model){
		List<Check> checklist = kaoheService.findAll();
		
		model.addAttribute("checklist", checklist);
		return "showAllkaohe";
	}
	
	//搜索
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public String search(Model model,Check check,String names){
		System.out.println(names);
		List<Check> checklist = kaoheService.findAllSearch(check,names);
		
		model.addAttribute("checklist", checklist);
		return "showAllkaohe";
	}
	
	
	@RequestMapping("/edit/{id}")
	public String eidt(@PathVariable String id,Model model){
		
		Check check = kaoheService.findById(id);
		model.addAttribute("check", check);
		return "editkaohe";
	}
	
	
	
	@RequestMapping("/update")
	public String update(Check check,RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("editsuccess", "修改成功");
		kaoheService.update(check);
		return "redirect:/kaohe/showAllkaohe";
	}
	
	
	@RequestMapping("/add")
	public String add(Model model){
		List<Working> wlist = workService.findAll();
		model.addAttribute("wlist", wlist);
		return "newkaohe";
	}
	
	@RequestMapping("/save")
	public String save(Check check,String names,RedirectAttributes redirectAttributes){
		Working work = workService.findByName(names);
		check.setId(PKUtil.getPk());
		check.setWorker(work);
		redirectAttributes.addFlashAttribute("savesuccess", "保存成功");
		kaoheService.save(check);
		return "redirect:/kaohe/showAllkaohe";
	}
	
	
	@RequestMapping("/del/{id}")
	public String del(@PathVariable String id,RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("delsuccess", "删除成功");
	
		kaoheService.del(id);
		return "redirect:/kaohe/showAllkaohe";
	}
	
}
