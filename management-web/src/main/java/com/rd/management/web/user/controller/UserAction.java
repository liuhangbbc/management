package com.rd.management.web.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rd.management.api.service.admin.MasterService;
import com.rd.management.api.service.user.UserService;
import com.rd.management.web.base.controller.BaseAction;

/**
 * 
 * @ClassName: UserAction
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年9月18日 下午2:26:47
 *
 */
@Controller
@RequestMapping("/user")
public class UserAction extends BaseAction {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private UserService userService;
	@Autowired
	private MasterService masterService;

	@RequestMapping("/inserUser")
	public ModelAndView inserUser(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("show", "hello word -liuhang");
		logger.info("show properties app result ===>>> " + app.toString());
		return new ModelAndView("/user/showInfo", map);
	}

	@RequestMapping("/login")
	public ModelAndView loginUser(HttpServletRequest request) {
		map = new HashMap<String, Object>();
		return new ModelAndView("/user/login", map);
	}

	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> checkLogin(HttpServletRequest request) throws Exception {
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		map = new HashMap<String, Object>();
		if (StringUtils.isEmpty(account) || StringUtils.isEmpty(password)) {
			map.put(SUCCESS, false);
			map.put(ERRORCODE, "100001");
			map.put(ERRORMSG, "账号或密码不能为空");
		} else {
			boolean success = masterService.checkLogin(account, password);
			map.put(SUCCESS, success);
			if (!success) {
				map.put(ERRORCODE, "100002");
				map.put(ERRORMSG, "账号不正确或密码错误，请重新输入！");
			}
		}
		return map;
	}
}
