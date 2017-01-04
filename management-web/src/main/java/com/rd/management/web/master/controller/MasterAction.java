package com.rd.management.web.master.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.raindrop.utils.enum2DataUtils;
import com.rd.management.api.entity.admin.Master;
import com.rd.management.api.enums.admin.masterSexEnum;
import com.rd.management.api.service.admin.MasterService;
import com.rd.management.web.base.controller.BaseAction;
import com.rd.management.web.master.manage.MasterManage;

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
	@Autowired
	private MasterManage masterManage;

	@RequestMapping(value = "/info")
	public ModelAndView findMaster(HttpServletRequest request) {
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

			map.put("sexType", enum2DataUtils.toList(masterSexEnum.class));
			return new ModelAndView("/master/info", map);
		}
	}

	@RequestMapping(value = "/info2", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> findMasterAjax(HttpServletRequest request) {
		logger.info("========>>>>>>> 获取用户信息 <<<<<<<========");
		map = new HashMap<String, Object>();
		String code = (String) request.getSession().getAttribute(
				"master_session");
		Long id = (Long) request.getSession().getAttribute("id");
		map.put(SUCCESS, true);
		if (id != null) {
			map.put(MSG, masterService.queryById(id));
		} else if (!StringUtils.isEmpty(code)) {
			map.put(MSG, masterService.queryByCode(code));
		} else {
			map.put(SUCCESS, false);
			map.put(ERRORCODE, "10006");
			map.put(ERRORMSG, "未找到相应code或id信息");
		}
		return map;
	}

	@RequestMapping(value = "/updateInfo", method = RequestMethod.POST)
	@ResponseBody
	@Transactional
	public Map<String, Object> updateMaster(HttpServletRequest request) {
		logger.info("========>>>>>>> 修改用户信息 <<<<<<<========");
		map = new HashMap<String, Object>();
		Master master = JSONObject.parseObject(
				(String) request.getParameter("master"), Master.class);
		if (master.getId() != null || master.getCode() != null) {
			int result = masterService.updateByMasterInfo(master);
			if (result == 1) {
				map.put(SUCCESS, true);
			}
		} else {
			map.put(SUCCESS, false);
			if (master.getId() != null) {
				map.put(ERRORCODE, "10004");
				map.put(ERRORMSG, "更新时用户id不能为空");
			} else if (master.getCode() != null) {
				map.put(ERRORCODE, "10005");
				map.put(ERRORMSG, "更新时用户code不能为空");
			}
		}
		return map;
	}

	@RequestMapping(value = "/changePwd", method = RequestMethod.POST)
	@ResponseBody
	@Transactional
	public Map<String, Object> changePwd(HttpServletRequest request)
			throws Exception {
		logger.info("========>>>>>>> 修改用户密码 <<<<<<<========");
		Map<String, Object> json = JSONObject.parseObject((String) request
				.getParameter("map"));
		String originalPwd = (String) json.get("originalPwd");
		String newPwd = (String) json.get("newPwd");
		String repeatPwd = (String) json.get("repeatPwd");
		String code = (String) request.getSession().getAttribute(
				"master_session");
		if (code == null) {
			code = (String) json.get("code");
		}

		map = new HashMap<String, Object>();
		map.put(SUCCESS, false);
		if (StringUtils.isEmpty(originalPwd)) {
			map.put(ERRORCODE, "10007");
			map.put(ERRORMSG, "原始密码不能为空");
		} else if (StringUtils.isEmpty(newPwd)) {
			map.put(ERRORCODE, "10008");
			map.put(ERRORMSG, "新密码不能为空");
		} else if (StringUtils.isEmpty(repeatPwd)) {
			map.put(ERRORCODE, "10009");
			map.put(ERRORMSG, "重复密码不能为空");
		} else if (StringUtils.isEmpty(code)) {
			map.put(ERRORCODE, "10006");
			map.put(ERRORMSG, "未找到相应code或id信息");
		} else if (!masterService.checkLogin(masterService.queryByCode(code)
				.getAccount(), originalPwd)) {
			map.put(ERRORCODE, "10003");
			map.put(ERRORMSG, "密码错误");
		} else if (!newPwd.equals(repeatPwd)) {
			map.put(ERRORCODE, "10010");
			map.put(ERRORMSG, "重复密码不一致");
		} else {
			int result = masterService.updateMasterPwdByCode(code, newPwd);
			if (result != 1) {
				map.put(ERRORCODE, "10011");
				map.put(ERRORMSG, "密码修改失败");

			} else {
				map.put(SUCCESS, true);
				map.put(MSG, "密码修改成功");
			}
		}
		return map;

	}

	@RequestMapping(value = "/upHead", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> upLoadHead(HttpServletRequest request,
			@RequestParam("imgFile") MultipartFile file)
			throws Exception {
		map = new HashMap<String, Object>();

		Long id = (Long) request.getSession().getAttribute("masterId");
		String code = (String) request.getSession().getAttribute("masterCode");
		String sessionCode = (String) request.getSession().getAttribute(
				"master_session");

		Map<String, Object> data = JSONObject.parseObject((String) request
				.getParameter("param"));
		
		map.put(SUCCESS, false);
		if (file.isEmpty()) {
			map.put(ERRORCODE, "10012");
			map.put(ERRORMSG, "文件上传失败");
		} else if (id == null && StringUtils.isEmpty(code)
				&& StringUtils.isEmpty(sessionCode)) {
			map.put(ERRORCODE, "10006");
			map.put(ERRORMSG, "未找到相应code或id信息");
		} else {
			map.put(SUCCESS, true);
			logger.info("get file info >> file name : " + file.getName()
					+ " , file oraginal file name : "
					+ file.getOriginalFilename() + " , get file size : "
					+ file.getSize() + " byte");
			masterManage.saveFile(file,data);

			logger.info("========>>>>>>> 文件上传成功 <<<<<<<========");
		}
		return map;
	}

	public static void main(String[] args) {
		masterSexEnum[] m = masterSexEnum.values();
		for (masterSexEnum masterSexEnum2 : m) {
			System.out.println(masterSexEnum2.getName());
		}
	}
}
