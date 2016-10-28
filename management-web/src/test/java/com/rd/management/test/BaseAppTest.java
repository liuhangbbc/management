package com.rd.management.test;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rd.management.core.api.entity.base.BaseApp;

/**
 * 
 * @ClassName: BaseAppTest
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年9月18日 下午2:27:20
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/spring-mvc.xml",
		"classpath:/spring-mybatis.xml", "classpath:/spring.xml" })
public class BaseAppTest {
	private final Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	public BaseApp app;

	@Test
	public void testBaseApp() {
		logger.info("app result ===>>> " + app.toString());

	}
}
