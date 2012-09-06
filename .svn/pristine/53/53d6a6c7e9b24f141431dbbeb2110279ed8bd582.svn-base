package com.hrm.controller;

import java.util.List;

import javax.print.attribute.standard.Media;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.hrm.pojo.Dimission;
import com.hrm.pojo.Working;
import com.hrm.service.LizhiService;
import com.hrm.service.WorkingService;

@Controller
@RequestMapping("/lizhi")
public class LizhiController {
	@Autowired
	private LizhiService lizhiService;
	@Autowired
	private WorkingService workingService;
	
	
	@RequestMapping("/showall")
	public String showAll(Model model){
		List<Dimission> list = lizhiService.findAll();
		model.addAttribute("lizhiList", list);
		return "showAlllizhi";
	}
	@RequestMapping("/searchlizhi")
	public String searchlizhi(String username,Model model){
		List<Dimission> list = lizhiService.findBySearch(username);
		model.addAttribute("lizhiList", list);
		return "showAlllizhi";
	}
	@RequestMapping("/add")
	public String addlizhi(){
		return "addlizhi";
	}
	@RequestMapping("/save")
	public String savelizhi(String name,Dimission dimission,RedirectAttributes rs){
		workingService.updateWorker(name);
		lizhiService.savelizhi(name,dimission);
		rs.addFlashAttribute("message", "保存成功");
		return "redirect:/lizhi/showall";
	}
	@RequestMapping("/edit/{id}")
	public String editlizhi(@PathVariable() String id,Model model){
		Dimission dimission = lizhiService.findByWorkid(id);
		model.addAttribute("dimission", dimission);
		return "editlizhi";
	}
	@RequestMapping(value="/saveedit",method=RequestMethod.POST)
	public String saveeditlizhi(String names,Dimission dimission,RedirectAttributes ra){
		Working working = workingService.findByName(names);
		if(working != null){
			lizhiService.saveedit(working.getId(), dimission);
			ra.addFlashAttribute("editmsg", "修改成功");
			return "redirect:/lizhi/showall";
		}
		return null;
	}
	@RequestMapping("/del/{id}")
	public String dellizhi(@PathVariable() String id,RedirectAttributes ra){
		lizhiService.dellizhi(id);
		ra.addFlashAttribute("delmsg", "删除成功");
		return "redirect:/lizhi/showall";
	}
	
}
