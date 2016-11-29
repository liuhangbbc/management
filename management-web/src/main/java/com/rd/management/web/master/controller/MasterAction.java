package com.rd.management.web.master.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rd.management.api.entity.admin.Master;
import com.rd.management.api.service.admin.MasterService;
import com.rd.management.web.base.controller.BaseAction;

/**
 * 
 * @ClassName: MasterAction
 * @Description: 管理员类
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年11月29日 上午10:44:45
 *
 */
@Controller
@RequestMapping("/master")
public class MasterAction extends BaseAction {
	private final Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	private MasterService masterService;

	@RequestMapping("/info")
	public ModelAndView loginUser(HttpServletRequest request) {
		map = new HashMap<String, Object>();
		String code = (String) request.getSession().getAttribute(
				"master_session");
		if (StringUtils.isEmpty(code)) {
			// 未获取到管理员的session登录数据
			return new ModelAndView("redirect:/login/login");
		} else {
			// 以获取管理员的session登录数据
			Master master = masterService.queryByCode(code);
			map.put("master", master);
			logger.info("map result => " + map.toString());
			return new ModelAndView("/master/info", map);
		}

	}
}
