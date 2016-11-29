package com.rd.management.web.login.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rd.management.api.entity.admin.Master;
import com.rd.management.api.service.admin.MasterService;
import com.rd.management.web.base.controller.BaseAction;

/**
 * @ClassName: LoginAction
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年9月18日 下午5:46:29
 * 
 */
@Controller
@RequestMapping("/login")
public class LoginAction extends BaseAction {
	private final Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	private MasterService masterService;

	@RequestMapping("/login")
	public ModelAndView loginUser(HttpServletRequest request) {
		map = new HashMap<String, Object>();

		logger.info("=====>>>>> 登录系统，进入登录界面 <<<<<=====");
		logger.info("客户端发出请求时的完整URL : " + request.getRequestURI());
		logger.info("客户机的IP地址 : " + request.getRemoteAddr());
		logger.info("客户机的完整主机名 : " + request.getRemoteHost());
		logger.info("客户机所使用的网络端口号 : " + request.getRemotePort());
		logger.info("客户机请求方式 : " + request.getMethod());
		logger.info("============ super华丽的分割线 ============");

		return new ModelAndView("/login/login", map);
	}

	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> checkLogin(HttpServletRequest request) {
		logger.info("========>>>>>>> 验证用户登录 <<<<<<<========");
		String account = request.getParameter("account");
		String password = request.getParameter("password");

		map = new HashMap<String, Object>();

		if (StringUtils.isEmpty(account) || StringUtils.isEmpty(password)) {
			map.put(SUCCESS, false);
			map.put(ERRORCODE, "10001");
			map.put(ERRORMSG, "账号或密码不能为空");
		} else if (password.length() < 6) {
			map.put(SUCCESS, false);
			map.put(ERRORCODE, "10002");
			map.put(ERRORMSG, "输入密码应大于6位");
		} else {
			try {
				boolean success = masterService.checkLogin(account, password);
				map.put(SUCCESS, success);
				if (success) {
					Master master = masterService.queryByAccount(account);
					request.getSession().setAttribute("master_session",
							master.getCode());
				} else {
					map.put(ERRORCODE, "10003");
					map.put(ERRORMSG, "账号不正确或密码错误，请重新输入！");
				}
			} catch (Exception e) {
				logger.error("解析密码异常 : " + e.getLocalizedMessage());
			}
		}
		logger.info("=========>>>>>>>> 登录结束 <<<<<<<<=========");
		return map;
	}
}
