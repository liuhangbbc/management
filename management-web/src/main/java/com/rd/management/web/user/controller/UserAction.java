package com.rd.management.web.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rd.management.api.service.user.UserService;

/**
 * 
 * @author liuhangbbc
 *
 */
@Controller
@RequestMapping("/user")
public class UserAction {
	@Autowired
	private UserService userService;

	@RequestMapping("/inserUser")
	public ModelAndView inserUser(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("show", "hello word -liuhang");
		return new ModelAndView("/user/showInfo", map);
	}
}
