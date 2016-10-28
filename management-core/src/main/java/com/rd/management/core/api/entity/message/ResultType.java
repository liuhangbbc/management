package com.rd.management.core.api.entity.message;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonInclude;

/**
 * @ClassName: resultType
 * @Description: 返回类型
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年9月18日 下午5:06:11
 * 
 */

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResultType<T> implements Serializable {

	private static final long serialVersionUID = -3531788933589693644L;

	private boolean status;
	private T result;

	public ResultType() {
		super();
	}

	public ResultType(T result) {
		super();
		this.status = true;
		this.result = result;
	}

	public ResultType(boolean status, T result) {
		super();
		this.status = status;
		this.result = result;
	}

	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public T getResult() {
		return result;
	}

	public void setResult(T result) {
		this.result = result;
	}

}
