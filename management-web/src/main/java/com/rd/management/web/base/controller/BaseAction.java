package com.rd.management.web.base.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.rd.management.core.api.entity.base.BaseApp;

/**
 * 
 * @author liuhangbbc
 *
 */
public class BaseAction {
	@Autowired
	protected BaseApp app;

	protected Map<String, Object> map;
	// 成功
	protected static final String SUCCESS = "success";
	// 失败
	protected static final String ERROR = "error";

	// 消息
	protected static final String MSG = "msg";

	// 错误码
	protected static final String ERRORCODE = "errorCode";
	// 错误信息
	protected static final String ERRORMSG = "errorMsg";
}
