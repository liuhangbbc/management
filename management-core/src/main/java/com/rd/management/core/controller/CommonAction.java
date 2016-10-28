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
	public ModelAndView error404(HttpServletRequest request) {
		return new ModelAndView("/common/404");
	}

	@RequestMapping("/500")
	public ModelAndView error500(HttpServletRequest request) {
		return new ModelAndView("/common/500");
	}
}
