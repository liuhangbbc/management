package com.rd.management.api.entity.admin;

import java.io.Serializable;
import java.util.Date;

/**
 * @ClassName: role
 * @Description: 角色信息类
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年11月23日 下午5:38:57
 * 
 */
public class role implements Serializable {

	/**
	 * 序列化
	 */
	private static final long serialVersionUID = 1910446725650053946L;
	/**
	 * 角色主键id
	 */
	private Long id;
	/**
	 * 角色标识
	 */
	private String code;
	/**
	 * 父角色id
	 */
	private Long parentId;
	/**
	 * 角色名称
	 */
	private String roleName;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 角色描述
	 */
	private String description;
	/**
	 * 备注
	 */
	private String remark;

	public role() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "role [id=" + id + ", code=" + code + ", parentId=" + parentId + ", roleName=" + roleName
				+ ", createTime=" + createTime + ", description=" + description + ", remark=" + remark + "]";
	}

}
