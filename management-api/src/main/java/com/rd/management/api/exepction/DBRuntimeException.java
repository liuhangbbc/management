package com.rd.management.api.exepction;

public class DBRuntimeException extends RuntimeException {
	/*
	 * 序列化
	 */
	private static final long serialVersionUID = -1170644736197810848L;
	// 数据库异常返回code
	private String errorCode = "ERROR_000011";
	// 数据返回错误
	private String errorMsg;

	public DBRuntimeException() {
		super();
	}

	public DBRuntimeException(String errorMsg) {
		super(errorMsg);
		this.errorMsg = errorMsg;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

}
