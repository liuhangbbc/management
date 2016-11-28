package com.rd.management.test;

import java.util.Date;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.raindrop.utils.rsatUtils.Base64Utils;
import com.raindrop.utils.rsatUtils.RSAUtils;
import com.rd.management.api.entity.admin.Master;
import com.rd.management.api.service.admin.MasterService;
import com.rd.management.core.api.entity.base.RsaApp;

/**
 * 
 * @ClassName: RsaTest
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年9月18日 下午2:27:14
 *
 */
public class RsaTest extends BaseAppTest {

	private final Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	private RsaApp rsaApp;

	@Autowired
	public MasterService masterService;

	@Test
	public void encodePassword() {
		try {
			String pwd = "1992917ab";
			String encodePwd = Base64Utils.encode(
					RSAUtils.encryptByPublicKey(pwd.trim().getBytes(), rsaApp
							.getPublickey().trim())).trim();
			logger.info("rsa encode result ===>>> " + encodePwd);
		} catch (Exception e) {
			logger.error("rsa encode error ===>>> " + e.getMessage());
		}
	}

	@Test
	public void decryptPassword() {
		try {
			String pwd = "DzGYifeWkGmlFrduDnffnNEUzjzGl4UU0Tzl81WHGXxTdBS8SvtCRitUXdElpYs1RYM9iHzci9VDrtdeq+5ibSLporlLGRM1+TYaZSg9WFhzillX3EEJAY8bwESBpRkZ17jzLSPJcFf/2IRX1BGeS7HFfU2Y221EB26+BoLp02U=";
			String decryptPwd = new String(RSAUtils.decryptByPrivateKey(
					Base64Utils.decode(pwd.trim()), rsaApp.getPrivatekey()
							.trim()));
			logger.info("rsa decrypt result ===>>> " + decryptPwd);
		} catch (Exception e) {
			logger.error("rsa decrypt error ===>>> " + e.getMessage());
		}
	}

	@Test
	public void createEncodeMaster() {
		try {
			String pwd = "123$%^";
			String encodePwd = Base64Utils.encode(
					RSAUtils.encryptByPublicKey(pwd.trim().getBytes(), rsaApp
							.getPublickey().trim())).trim();
			logger.info("rsa encode result ===>>> " + encodePwd);
			Master master = new Master();
			master.setCode("code123");
			master.setAccount("admin");
			master.setUserName("admin");
			master.setPassword(encodePwd);
			master.setCreateTime(new Date());
			long result = masterService.insertMaster(master);
			logger.info("masterDao result ===>>> " + result);
		} catch (Exception e) {
			logger.info("masterDao error ===>>> " + e.getMessage());
		}
	}

	@Test
	public void queryAndDecryptMaster() {
		try {
			// Master master = masterService.queryById((long) 3);
			Master master = masterService.queryByAccount("liuhangbbc3");
			logger.info("query master result ===>>> " + master.toString());
			String decryptPwd = new String(RSAUtils.decryptByPrivateKey(
					Base64Utils.decode(master.getPassword().trim()), rsaApp
							.getPrivatekey().trim()));
			logger.info("rsa decrypt result ===>>> " + decryptPwd);
		} catch (Exception e) {
			logger.info("masterDao error ===>>> " + e.getMessage());
		}
	}
}
