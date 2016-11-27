package com.rd.management.api.entity.admin;

import java.io.Serializable;

/**
 * @ClassName: m2jRelationship
 * @Description: 管理员与权限的关系类
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年11月23日 下午5:52:23
 * 
 */
public class m2jRelationship implements Serializable {

	/**
	 * 学列化
	 */
	private static final long serialVersionUID = 7028225501429942844L;
	/**
	 * 主键id
	 */
	private Long id;
	/**
	 * 管理员id
	 */
	private Long masterId;
	/**
	 * 权限id
	 */
	private Long jurisdictionId;
	/**
	 * 权限类型
	 */
	private int jurisdictionType;
	/**
	 * 备注
	 */
	private String remark;

	public m2jRelationship() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getMasterId() {
		return masterId;
	}

	public void setMasterId(Long masterId) {
		this.masterId = masterId;
	}

	public Long getJurisdictionId() {
		return jurisdictionId;
	}

	public void setJurisdictionId(Long jurisdictionId) {
		this.jurisdictionId = jurisdictionId;
	}

	public int getJurisdictionType() {
		return jurisdictionType;
	}

	public void setJurisdictionType(int jurisdictionType) {
		this.jurisdictionType = jurisdictionType;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "m2jRelationship [id=" + id + ", masterId=" + masterId + ", jurisdictionId=" + jurisdictionId
				+ ", jurisdictionType=" + jurisdictionType + ", remark=" + remark + "]";
	}

}
