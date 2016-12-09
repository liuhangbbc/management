package com.rd.management.core.listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.log4j.Logger;

/**
 * @ClassName: DefaultSessionListener
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年12月7日 下午12:11:13
 * 
 */
public class DefaultSessionListener implements HttpSessionListener {
	private final Logger logger = Logger.getLogger(this.getClass());

	/**
	 * session 创建时执行方法
	 */
	public void sessionCreated(HttpSessionEvent se) {
		logger.info("session create methode info");
	}

	/**
	 * session 销毁时执行方法
	 */
	public void sessionDestroyed(HttpSessionEvent se) {
		logger.info("session destroy methode info");
		logger.info("session name is " + se.getSession().getAttribute("master_session"));
	}

}
