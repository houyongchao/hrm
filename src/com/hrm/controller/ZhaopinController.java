package com.hrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hrm.pojo.Depart;
import com.hrm.pojo.Zhaopin;
import com.hrm.pojo.ZhaopinDto;
import com.hrm.service.DepartService;
import com.hrm.service.ZhaopinService;
import com.hrm.util.PKUtil;

@Controller
@RequestMapping("/zhaopin")
public class ZhaopinController {

	@Autowired
	private ZhaopinService zhaopinService;
	
	@Autowired
	private DepartService departService;
	
	@RequestMapping(value="/showAllzhaopin",method=RequestMethod.GET)
	public String showAll(Model model){
		
		List<Zhaopin> zhaopinList = zhaopinService.findAll();
		model.addAttribute("zhaopinList", zhaopinList);
		return "zhaopin-xiangmu";
	}
	
	
	//搜索
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public 	String search(Model model,Zhaopin zhaopin,String names){
		
		ZhaopinDto zhaopinDto = new ZhaopinDto();
		zhaopinDto.setNames(names);
		zhaopinDto.setContent(zhaopin.getContent());
		zhaopinDto.setPosition(zhaopin.getPosition());
		List<Zhaopin> zhaopinList = zhaopinService.findAllSearch(zhaopinDto);
		model.addAttribute("zhaopinList", zhaopinList);
		return "zhaopin-xiangmu";
	}
	
	@RequestMapping("/edit/{id}")
	public String eidt(@PathVariable String id,Model model){
		
		Zhaopin zhaopin = zhaopinService.findById(id);
		List<Depart> departList = departService.findAll();
		model.addAttribute("departList", departList);
		model.addAttribute("zhaopin", zhaopin);
		return "zhaopin-editxiangmu";
	}
	
	@RequestMapping("/update")
	public String update(Zhaopin zhaopin,RedirectAttributes redirectAttributes,String names){
		redirectAttributes.addFlashAttribute("editsuccess", "修改成功");
		Depart depart = departService.findByDepartname(names);
		zhaopin.setDepart(depart);
		zhaopinService.update(zhaopin);
		return "redirect:/zhaopin/showAllzhaopin";
	}
	
	@RequestMapping("/add")
	public String add(Model model){
		
		List<Depart> departList = departService.findAll();
		model.addAttribute("departList", departList);
		return "zhaopin-addxiangmu";
	}
	
	
	@RequestMapping("/save")
	public String save(Zhaopin zhaopin,String names,RedirectAttributes redirectAttributes){
		Depart depart = departService.findByDepartname(names);
		zhaopin.setId(PKUtil.getPk());
		zhaopin.setDepart(depart);
		redirectAttributes.addFlashAttribute("savesuccess", "保存成功");
		zhaopinService.save(zhaopin);
		return "redirect:/zhaopin/showAllzhaopin";
	}
	
	
	@RequestMapping("/del/{id}")
	public String del(@PathVariable String id,RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("delsuccess", "删除成功");
	
		zhaopinService.del(id);
		return "redirect:/zhaopin/showAllzhaopin";
	}
}
