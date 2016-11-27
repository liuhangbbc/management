package com.rd.management.api.entity.admin;

import java.io.Serializable;

/**
 * @ClassName: j2rRelationship
 * @Description: 权限与角色的关系类
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年11月23日 下午5:55:10
 * 
 */
public class j2rRelationship implements Serializable {

	/**
	 * 序列化
	 */
	private static final long serialVersionUID = 999522949234359382L;
	/**
	 * 主键id
	 */
	private Long id;
	/**
	 * 角色id
	 */
	private Long roleId;
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

	public j2rRelationship() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
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
		return "j2rRelationship [id=" + id + ", roleId=" + roleId + ", jurisdictionId=" + jurisdictionId
				+ ", jurisdictionType=" + jurisdictionType + ", remark=" + remark + "]";
	}

}
