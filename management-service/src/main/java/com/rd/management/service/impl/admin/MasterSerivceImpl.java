package com.rd.management.service.impl.admin;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rd.management.api.entity.admin.Master;
import com.rd.management.api.service.admin.MasterService;
import com.rd.management.service.dao.admin.MasterDao;

@Service("masterService")
public class MasterSerivceImpl implements MasterService {
	private static Logger log = Logger.getLogger(MasterSerivceImpl.class
			.getName());
	@Autowired
	private MasterDao masterDao;

	public long insertMaster(Master master) throws Exception {
		int result = masterDao.insert(master);
		if (result != 1) {
			throw new Exception("新增 管理员 失败!");
		}
		log.info("insert master result ===>>> " + master.toString());
		return master.getId();
	}
}
