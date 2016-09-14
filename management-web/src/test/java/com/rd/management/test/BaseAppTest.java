package com.rd.management.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rd.management.core.api.BaseApp;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/spring-mvc.xml",
		"classpath:/spring-mybatis.xml", "classpath:/spring.xml" })
public class BaseAppTest {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	public BaseApp app;

	@Test
	public void testBaseApp() {
		logger.info("app result ===>>> " + app.toString());

	}
}
