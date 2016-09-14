package com.rd.management.test;

import java.util.Date;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rd.management.api.entity.admin.Master;
import com.rd.management.api.service.admin.MasterService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/spring-mvc.xml",
		"classpath:/spring-mybatis.xml", "classpath:/spring.xml" })
public class daoTest {
	private final Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	public MasterService masterService;

	@Test
	public void masterDaoTest() {
		try {
			Master master = new Master("liuhangbbc2", "password", new Date());
			long result = masterService.insertMaster(master);
			logger.info("masterDao result ===>>> " + result);
		} catch (Exception e) {
			logger.info("masterDao error ===>>> " + e.getMessage());
		}
	}
}
