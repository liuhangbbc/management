package com.rd.management.api.entity.user;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @ClassName: UserInfo
 * @Description: 用户表
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年7月25日 上午11:42:26
 */
public class UserInfo implements Serializable {
	private static final long serialVersionUID = 882941789506866928L;
	private Long id;// 用户表主键
	private String userId;// 用户表示id
	private String password;// 用户密码
	private Integer gender;// 用户性别
	private String realName;// 用户真实姓名
	private String nickName;// 用户昵称
	private Date birth;// 用户出生日期
	private String phone;// 用户电话
	private String email;// 用户邮箱
	private String address;// 用户所在地址
	private String headImage;// 用户头像
	private Date createTime;// 用户创建时间
	private Date updateTime;// 用户更行时间
	private Integer level;// 用户分组等级
	private Integer isLand;// 是否登录（全局唯一性登录控制）
	private Integer isFrozen;// 是否冻结
	private String remark;// 备注

	public UserInfo() {
		super();
	}

	public UserInfo(String userId, String password, Integer gender, String nickName, String headImage, Date createTime,
			Integer level, Integer isFrozen) {
		super();
		this.userId = userId;
		this.password = password;
		this.gender = gender;
		this.nickName = nickName;
		this.headImage = headImage;
		this.createTime = createTime;
		this.level = level;
		this.isFrozen = isFrozen;
	}

	public Long getId() {
		return id;
	}

	public String getUserId() {
		return userId;
	}

	public String getPassword() {
		return password;
	}

	public Integer getGender() {
		return gender;
	}

	public String getRealName() {
		return realName;
	}

	public String getNickName() {
		return nickName;
	}

	public Date getBirth() {
		return birth;
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

	public Date getCreateTime() {
		return createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public Integer getLevel() {
		return level;
	}

	public Integer getIsLand() {
		return isLand;
	}

	public Integer getIsFrozen() {
		return isFrozen;
	}

	public String getRemark() {
		return remark;
	}

}
