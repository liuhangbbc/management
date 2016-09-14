package com.rd.management.web.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rd.management.api.service.user.UserService;
import com.rd.management.web.base.controller.BaseAction;

/**
 * 
 * @author liuhangbbc
 *
 */
@Controller
@RequestMapping("/user")
public class UserAction extends BaseAction {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Value("#{propertiesReader['server.base.url']}")
	private String baseUrl;
	@Value("#{propertiesReader['server.host']}")
	private String host;

	@Autowired
	private UserService userService;

	@RequestMapping("/inserUser")
	public ModelAndView inserUser(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("show", "hello word -liuhang");
		logger.info("show properties url result ===>>> " + baseUrl);
		logger.info("show properties host result ===>>> " + host);
		logger.info("show properties app result ===>>> " + app.toString());
		return new ModelAndView("/user/showInfo", map);
	}

	@RequestMapping("/login")
	public ModelAndView loginUser(HttpServletRequest request) {
		map = new HashMap<String, Object>();
		return new ModelAndView("/user/login", map);
	}
}
