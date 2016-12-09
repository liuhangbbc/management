package com.rd.management.api.service.admin;

import com.raindrop.common.exception.AppException;
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
	long insertMaster(Master master) throws Exception;

	Master queryById(Long id);

	Master queryByAccount(String account);

	Master queryByCode(String code);

	boolean checkLogin(String account, String password) throws Exception;

	int updateByMasterInfo(Master master) throws AppException;

	int updateMasterPwdByInfo(Master master, String password) throws Exception;

	int updateMasterPwdByCode(String code, String newPwd) throws Exception;

	int updateMasterPwdByAccount(String account, String newPwd)
			throws Exception;

	int updateMasterPwdById(long id, String newPwd) throws Exception;

}
