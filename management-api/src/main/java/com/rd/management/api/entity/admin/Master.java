package com.rd.management.api.entity.admin;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @ClassName: Master
 * @Description: 管理员信息类
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年9月18日 下午2:30:06
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
	 * 管理员标识
	 */
	private String code;
	/**
	 * 帐号
	 */
	private String account;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 用户名
	 */
	private String userName;
	/**
	 * 出生日期
	 */
	private Date birth;
	/**
	 * 性别
	 */
	private int sex;
	/**
	 * 手机号
	 */
	private String phone;
	/**
	 * 电子邮箱
	 */
	private String email;
	/**
	 * 头像
	 */
	private String headImage;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 上次登录时间
	 */
	private Date lastTime;
	/**
	 * 是否登录(全局控制)
	 */
	private int isLand;
	/**
	 * 是否冻结
	 */
	private int isFrozen;
	/**
	 * 备注
	 */
	private String remark;

	public Master() {
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

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHeadImage() {
		return headImage;
	}

	public void setHeadImage(String headImage) {
		this.headImage = headImage;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getLastTime() {
		return lastTime;
	}

	public void setLastTime(Date lastTime) {
		this.lastTime = lastTime;
	}

	public int getIsLand() {
		return isLand;
	}

	public void setIsLand(int isLand) {
		this.isLand = isLand;
	}

	public int getIsFrozen() {
		return isFrozen;
	}

	public void setIsFrozen(int isFrozen) {
		this.isFrozen = isFrozen;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "Master [id=" + id + ", code=" + code + ", account=" + account + ", password=" + password + ", userName="
				+ userName + ", birth=" + birth + ", sex=" + sex + ", phone=" + phone + ", email=" + email
				+ ", headImage=" + headImage + ", createTime=" + createTime + ", lastTime=" + lastTime + ", isLand="
				+ isLand + ", isFrozen=" + isFrozen + ", remark=" + remark + "]";
	}

}