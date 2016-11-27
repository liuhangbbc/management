package com.rd.management.api.entity.admin;

import java.io.Serializable;

/**
 * @ClassName: jurisdiction
 * @Description: 权限类
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年11月23日 下午5:43:04
 * 
 */
public class jurisdiction implements Serializable {

	/**
	 * 序列化
	 */
	private static final long serialVersionUID = -5618195659248934351L;
	/**
	 * 主键权限id
	 */
	private Long id;
	/**
	 * 权限标识
	 */
	private String code;
	/**
	 * 父权限id
	 */
	private Long parentId;
	/**
	 * 权限名称
	 */
	private String jurName;
	/**
	 * 权限描述
	 */
	private String description;
	/**
	 * 备注
	 */
	private String remark;

	public jurisdiction() {
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

	public String getJurName() {
		return jurName;
	}

	public void setJurName(String jurName) {
		this.jurName = jurName;
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
		return "jurisdiction [id=" + id + ", code=" + code + ", parentId=" + parentId + ", jurName=" + jurName
				+ ", description=" + description + ", remark=" + remark + "]";
	}

}
