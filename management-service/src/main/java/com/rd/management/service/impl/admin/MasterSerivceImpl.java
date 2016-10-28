package com.rd.management.service.impl.admin;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.raindrop.common.exception.AppException;
import com.raindrop.utils.rsatUtils.Base64Utils;
import com.raindrop.utils.rsatUtils.RSAUtils;
import com.rd.management.api.entity.admin.Master;
import com.rd.management.api.exepction.DBException;
import com.rd.management.api.service.admin.MasterService;
import com.rd.management.core.api.entity.base.RsaApp;
import com.rd.management.service.dao.admin.MasterDao;

/**
 * 
 * @ClassName: MasterSerivceImpl
 * @Description: 管理员信息 服务 实现
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年9月18日 下午2:41:43
 *
 */
@Service("masterService")
public class MasterSerivceImpl implements MasterService {
	private final Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	private RsaApp rsaApp;
	@Autowired
	private MasterDao masterDao;

	public long insertMaster(Master master) throws Exception {
		int result = masterDao.insert(master);
		if (result != 1) {
			throw new DBException("新增 管理员 失败!");
		}
		logger.info("insert master result ===>>> " + master.toString());
		return master.getId();
	}

	public Master queryById(Long id) {
		if (id == null) {
			throw new AppException("查询id不存在!");
		}
		Master master = masterDao.queryById(id);
		if (master == null) {
			throw new DBException("未查询到相关管理员信息!");
		}
		return master;
	}

	public Master queryByAccount(String account) {
		if (account == null) {
			throw new AppException("查询account（账号）不存在!");
		}
		Master master = masterDao.queryByAccount(account);
		if (master == null) {
			throw new DBException("未查询到相关管理员信息!");
		}
		return master;
	}

	public boolean checkLogin(String account, String password) throws Exception {
		Master master = masterDao.queryByAccount(account);
		if (master == null) {
			return false;
		}
		String encodePassword = master.getPassword();
		if (StringUtils.isEmpty(encodePassword)) {
			return false;
		}
		logger.info("encodePassword result : " + encodePassword);
		String decryptPwd = new String(RSAUtils.decryptByPrivateKey(Base64Utils
				.decode(master.getPassword().trim()), rsaApp.getPrivatekey()
				.trim()));
		logger.info("decryptPwd result : " + decryptPwd);
		if (!StringUtils.isEmpty(decryptPwd) && decryptPwd.equals(password)) {
			return true;
		}
		return false;
	}
}
