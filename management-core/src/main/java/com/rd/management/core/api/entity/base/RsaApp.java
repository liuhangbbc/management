package com.rd.management.core.api.entity.base;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class RsaApp implements Serializable {

	private static final long serialVersionUID = -4751943912794694673L;

	@Value("#{propertiesReader['rsa.publickey']}")
	private String publickey;

	@Value("#{propertiesReader['rsa.privatekey']}")
	private String privatekey;

	public RsaApp() {
		super();
	}

	public String getPublickey() {
		return publickey;
	}

	public String getPrivatekey() {
		return privatekey;
	}

}
