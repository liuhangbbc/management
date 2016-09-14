package com.rd.management.api.entity.admin;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @author lh-rs
 *
 */

public class Master implements Serializable {
	/**
	 * 序列化
	 */
	private static final long serialVersionUID = 5549356032514560865L;
	/**
	 * 管理员主键id
	 */
	private Long id;
	/**
	 * 昵称
	 */
	private String nickName;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 真实姓名
	 */
	private String trueName;
	/**
	 * 出生日期（年月日）
	 */
	private Date birth;
	/**
	 * 性别 (0:未知,1:男,2:女)
	 */
	private Integer sex;
	/**
	 * 电话（座机/手机）
	 */
	private String phone;
	/**
	 * 电子邮箱
	 */
	private String email;
	/**
	 * 居住地址
	 */
	private String address;
	/**
	 * 头像
	 */
	private String headImage;
	/**
	 * 父类管理员id
	 */
	private Long parentId;
	/**
	 * 是否登录(0:未登录,1:已登录) 用于全局登录控制
	 */
	private Integer isLand;
	/**
	 * 是否冻结该用户(0:未冻结,1:已冻结)
	 */
	private Integer isFrozen;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 更新时间(操作一次更新一次)
	 */
	private Date updateTime;
	/**
	 * 备注 乱七八糟不相干的吐槽信息
	 */
	private String remark;

	public Master() {
		super();
	}

	public Master(String nickName, String password, Date updateTime) {
		super();
		this.nickName = nickName;
		this.password = password;
		this.createTime = new Date();
		this.updateTime = updateTime;
	}

	public Long getId() {
		return id;
	}

	public String getNickName() {
		return nickName;
	}

	public String getPassword() {
		return password;
	}

	public String getTrueName() {
		return trueName;
	}

	public Date getBirth() {
		return birth;
	}

	public Integer getSex() {
		return sex;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getAddress() {
		return address;
	}

	public String getHeadImage() {
		return headImage;
	}

	public Long getParentId() {
		return parentId;
	}

	public Integer getIsLand() {
		return isLand;
	}

	public Integer getIsFrozen() {
		return isFrozen;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public String getRemark() {
		return remark;
	}

	@Override
	public String toString() {
		return "Master [id=" + id + ", nickName=" + nickName + ", password="
				+ password + ", trueName=" + trueName + ", birth=" + birth
				+ ", sex=" + sex + ", phone=" + phone + ", email=" + email
				+ ", address=" + address + ", headImage=" + headImage
				+ ", parentId=" + parentId + ", isLand=" + isLand
				+ ", idFrozen=" + isFrozen + ", createTime=" + createTime
				+ ", updateTime=" + updateTime + ", remark=" + remark + "]";
	}

}