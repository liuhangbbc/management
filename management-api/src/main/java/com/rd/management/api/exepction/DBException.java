package com.rd.management.api.exepction;

import com.raindrop.common.exception.AppException;

public class DBException extends AppException {

	private static final long serialVersionUID = 2194931737128716915L;

	private String code;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public DBException() {
		super();
	}

	public DBException(String message) {
		super(message);
	}

	public DBException(String code, String message) {
		super(message);
		this.code = code;
	}

	public DBException(Throwable cause) {
		super(cause);
	}

	public DBException(String message, Throwable cause) {
		super(message, cause);
	}

	public DBException(String code, String message, Throwable cause) {
		super(message, cause);
		this.code = code;
	}

}
