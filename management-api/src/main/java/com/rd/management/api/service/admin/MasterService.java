package com.rd.management.api.service.admin;

import com.rd.management.api.entity.admin.Master;

public interface MasterService {
	/**
	 * 新增管理员
	 * 
	 * @param master
	 * @return
	 */
	long insertMaster(Master master)throws Exception ;
}
