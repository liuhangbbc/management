package com.rd.management.core.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @author liuhangbbc
 *
 */
@Controller
@RequestMapping("/common")
public class CommonAction {

	@RequestMapping("/404")
	public ModelAndView inserUser(HttpServletRequest request) {
		return new ModelAndView("/common/404");
	}
}
