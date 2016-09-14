package com.rd.management.core.api;

import java.io.Serializable;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class BaseApp implements Serializable {
	private static final long serialVersionUID = 3018067769687127333L;
	@Value("#{propertiesReader['server.base.url']}")
	private String baseUrl;
	@Value("#{propertiesReader['server.host']}")
	private String host;

	public BaseApp() {
		super();
	}

	public String getBaseUrl() {
		return baseUrl;
	}

	public String getHost() {
		return host;
	}

	@Override
	public String toString() {
		return "BaseApp [baseUrl=" + baseUrl + ", host=" + host + "]";
	}

}
