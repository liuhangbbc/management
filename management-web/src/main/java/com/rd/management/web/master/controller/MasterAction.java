package com.rd.management.web.master.controller;

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

import com.raindrop.utils.reflectiveEntityUtil;
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

	@RequestMapping(value = "/info")
	public ModelAndView outMaster(HttpServletRequest request) {
		logger.info("========>>>>>>> 获取用户信息 <<<<<<<========");
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

	@RequestMapping(value = "/updateInfo", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> updateMaster(HttpServletRequest request) {
		logger.info("========>>>>>>> 修改用户信息 <<<<<<<========");
		map = new HashMap<String, Object>();
		Master master = (Master) reflectiveEntityUtil.reflectiveEntity(
				Master.class, request);
		if (master.getId() != null) {
			// TODO 根据id进行更新操作
		} else if (master.getCode() != null) {
			// TODO 根据标识code进行更新操作
		} else if (master.getAccount() != null) {
			// TODO 根据账号account进行更新操作
		} else {
			map.put(SUCCESS, false);
			if (master.getId() != null) {
				map.put(ERRORCODE, "10004");
				map.put(ERRORMSG, "更新时用户id不能为空");
			}
			if (master.getCode() != null) {
				map.put(ERRORCODE, "10005");
				map.put(ERRORMSG, "更新时用户code不能为空");
			}
			if (master.getAccount() != null) {
				map.put(ERRORCODE, "10006");
				map.put(ERRORMSG, "更新时用户account不能为空");
			}
		}
		return map;
	}
}
