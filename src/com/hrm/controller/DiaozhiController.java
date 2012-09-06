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
import com.hrm.pojo.Transfer;
import com.hrm.pojo.TransferDto;
import com.hrm.pojo.Working;
import com.hrm.service.DepartService;
import com.hrm.service.TransferService;
import com.hrm.service.WorkingService;
import com.hrm.util.PKUtil;

@Controller
@RequestMapping("/transfer")
public class DiaozhiController {

	@Autowired
	private TransferService transferService;
	
	@Autowired
	private DepartService departService;
	
	@Autowired
	private WorkingService workService;
	
	@RequestMapping(value="/showAlldiaozhi",method=RequestMethod.GET)
	public String showAll(Model model){
		List<Transfer> transferlist = transferService.findAll();
		model.addAttribute("transferlist", transferlist);
		return "showAlldiaozhi";
	}
	
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public 	String search(Model model,Transfer transfer,String names){
		
		TransferDto transferDto = new TransferDto();
		transferDto.setNames(names);
		transferDto.setBeforedepart(transfer.getBeforedepart());
		transferDto.setApprover(transfer.getApprover());
		List<Transfer> transferlist = transferService.findAllSearch(transferDto);
		model.addAttribute("transferlist", transferlist);
		return "showAlldiaozhi";
	}
	
	@RequestMapping("/edit/{id}")
	public String eidt(@PathVariable String id,Model model){
		
		Transfer transfer = transferService.findById(id);
		
		model.addAttribute("transfer", transfer);
		return "editdiaozhi";
	}
	
	
	@RequestMapping("/update")
	public String update(Transfer transfer,RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("editsuccess", "修改成功");
		transferService.update(transfer);
		return "redirect:/transfer/showAlldiaozhi";
	}
	
	@RequestMapping("/add")
	public String add(Model model){
		List<Working> wlist = workService.findAll();
		List<Depart> departlist = departService.findAll();
		model.addAttribute("departlist", departlist);
		model.addAttribute("wlist", wlist);
		return "newdiaozhi";
	}
	
	
	@RequestMapping("/save")
	public String save(Transfer transfer,String names,RedirectAttributes redirectAttributes){
		Working work = workService.findByName(names);
		transfer.setId(PKUtil.getPk());
		transfer.setWorker(work);
		redirectAttributes.addFlashAttribute("savesuccess", "保存成功");
		transferService.save(transfer);
		return "redirect:/transfer/showAlldiaozhi";
	}
	
	
	@RequestMapping("/del/{id}")
	public String del(@PathVariable String id,RedirectAttributes redirectAttributes){
		redirectAttributes.addFlashAttribute("delsuccess", "删除成功");
	
		transferService.del(id);
		return "redirect:/transfer/showAlldiaozhi";
	}
}
