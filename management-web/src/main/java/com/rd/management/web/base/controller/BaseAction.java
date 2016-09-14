package com.rd.management.web.base.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.rd.management.core.api.BaseApp;

/**
 * 
 * @author liuhangbbc
 *
 */
public class BaseAction {
	@Autowired
	public BaseApp app;

	public Map<String, Object> map;

	static {

	}
}
