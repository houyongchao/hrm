package com.hrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hrm.pojo.Vacation;
import com.hrm.pojo.VacationDto;
import com.hrm.pojo.Working;
import com.hrm.service.VacationService;
import com.hrm.service.WorkingService;

@Controller
@RequestMapping("/vacation")
public class VacationController {

	@Autowired
	private VacationService vacationService;
	
	@Autowired
	private WorkingService workService;
	
	@RequestMapping(value="/showAllVacation",method=RequestMethod.GET)
	public String showAll(Model model){
		
		List<Vacation> vacationList = vacationService.findAll();
		model.addAttribute("vacationList", vacationList);
		return "showAllxiujia";
	}
	
	//搜索
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public 	String search(Model model,Vacation vacation,String names){
		
		VacationDto vacationDto = new VacationDto();
		vacationDto.setNames(names);
		vacationDto.setApprover(vacation.getApprover());
		vacationDto.setCategory(vacation.getCategory());
		List<Vacation> vacationList = vacationService.findAllSearch(vacationDto);
		model.addAttribute("vacationList", vacationList);
		return "showAllxiujia";
	}
	
	@RequestMapping("/edit/{id}")
	public String eidt(@PathVariable String id,Model model){
		
		Vacation vacation = vacationService.findById(id);
		model.addAttribute("vacation", vacation);
		return "xiujia-edit";
	}
	
	
	@RequestMapping("/update")
	public String update(Vacation vacation,RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("editsuccess", "修改成功");
		vacationService.update(vacation);
		return "redirect:/vacation/showAllVacation";
	}
	
	
	@RequestMapping("/add")
	public String add(Model model){
		List<Working> wlist = workService.findAll();
		model.addAttribute("wlist", wlist);
		return "xiujia-new";
	}
	
	@RequestMapping("/save")
	public String save(Vacation vacation,String names,RedirectAttributes redirectAttributes){
		Working work = workService.findByName(names);
		vacation.setWorker(work);
		redirectAttributes.addFlashAttribute("savesuccess", "保存成功");
		vacationService.save(vacation);
		return "redirect:/vacation/showAllVacation";
	}
	
	
	@RequestMapping("/del/{id}")
	public String del(@PathVariable String id,RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("delsuccess", "删除成功");
	
		vacationService.del(id);
		return "redirect:/vacation/showAllVacation";
	}
}
