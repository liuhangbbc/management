package com.rd.management.web.master.manage;

import org.springframework.stereotype.Service;

import com.rd.management.api.entity.admin.Master;

/**
 * @ClassName: MasterManage
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年12月6日 下午12:08:44
 * 
 */
@Service("masterManage")
public class MasterManage {
	/**
	 * 
	 * @param newPwd
	 * @param repeatPwd
	 * @return
	 */
	public boolean comparePwd(String newPwd, String repeatPwd) {
		return true;
	}

	/**
	 * 验证密码是否正确
	 * @param master
	 * @param originalPwd
	 * @return
	 */
	public boolean checkPwd(Master master, String originalPwd) {
		
		return true;
	}

	/**
	 * 
	 * @param queryByCode
	 * @param newPwd
	 * @return
	 */
	public int update(Master queryByCode, String newPwd) {
		return 0;
		// TODO Auto-generated method stub

	}
}
