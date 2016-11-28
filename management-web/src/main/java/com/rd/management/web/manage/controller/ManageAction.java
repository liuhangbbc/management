package com.rd.management.web.manage.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rd.management.web.base.controller.BaseAction;

/**
 * 
 * @ClassName: ManageAction
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年11月28日 下午4:09:57
 *
 */
@Controller
@RequestMapping("/manage")
public class ManageAction extends BaseAction {
	private final Logger logger = Logger.getLogger(this.getClass());

	@RequestMapping("/index")
	public ModelAndView loginUser(HttpServletRequest request) {
		map = new HashMap<String, Object>();
		String master = (String) request.getSession().getAttribute(
				"master_session");
		if (StringUtils.isEmpty(master)) {
			// 未获取到管理员的session登录数据
			return new ModelAndView("redirect:/login/login");
		} else {
			// 以获取管理员的session登录数据
			map.put("master_session", master);
			logger.info("map result => " + map.toString());
			return new ModelAndView("/platform/index", map);
		}

	}
}
