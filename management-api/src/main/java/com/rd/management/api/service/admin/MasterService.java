package com.rd.management.api.service.admin;

import com.rd.management.api.entity.admin.Master;

/**
 * 
 * @ClassName: MasterService
 * @Description: 管理员信息 服务 接口
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年9月18日 下午2:40:45
 *
 */
public interface MasterService {
	/**
	 * 新增管理员
	 * 
	 * @param master
	 * @return
	 */
	long insertMaster(Master master) throws Exception;

	Master queryById(Long id);

	Master queryByAccount(String account);

	boolean checkLogin(String account, String password) throws Exception;
}
