package com.rd.management.api.entity.admin;

import java.io.Serializable;

/**
 * @ClassName: m2rRelationship
 * @Description: 管理员与角色的关系类
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年11月23日 下午5:56:19
 * 
 */
public class m2rRelationship implements Serializable {

	/**
	 * 序列化
	 */
	private static final long serialVersionUID = 1270224085155919233L;
	/**
	 * 主键id
	 */
	private Long id;
	/**
	 * 管理员id
	 */
	private Long masterId;
	/**
	 * 角色id
	 */
	private Long roleId;
	/**
	 * 备注
	 */
	private String remark;

	public m2rRelationship() {
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

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "m2rRelationship [id=" + id + ", masterId=" + masterId + ", roleId=" + roleId + ", remark=" + remark
				+ "]";
	}

}
