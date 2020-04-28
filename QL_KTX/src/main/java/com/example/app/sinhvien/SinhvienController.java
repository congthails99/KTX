package com.example.app.sinhvien;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.app.hopdong.hopdong;

@Controller
public class SinhvienController {
	@Autowired
	SinhvienService service;
	@RequestMapping("/")
	public String viewHomePage(Model model) {
		List<sinhvien> listSinhvien = service.listAll();
		model.addAttribute("listSinhvien",listSinhvien);
		return "index";
	}
	@RequestMapping("/new")
	public String showNewSinhvienPage(Model model) {
		sinhvien sinhvien = new sinhvien();
		model.addAttribute("sinhvien" ,sinhvien);
		return "newSinhvien";
	}
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveSinhvien(@ModelAttribute("sinhvien")sinhvien sinhvien) {
		service.save(sinhvien);
		return"redirect:/";
	}
	@RequestMapping("/edit/{masinhvien}")
	public ModelAndView showEditSinhvienPage(@PathVariable(name="masinhvien")int masinhvien) {
		ModelAndView nav= new ModelAndView("editSinhvien");
		sinhvien sinhvien = service.get(masinhvien);
		nav.addObject("sinhvien",sinhvien);
		return nav;
	}
	@RequestMapping("/delete/{masinhvien}")
	public String deleteSinhvien(@PathVariable(name="masinhvien")int masinhvien){
		service.delete(masinhvien);
		return "redirect:/";
	}
}

