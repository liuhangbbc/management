package com.rd.management.api.entity.admin;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @ClassName: Master
 * @Description: 管理员信息实体
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
	private String code;
	private String account;
	private String password;
	private String userName;
	private Date birth;
	private int sex;
	private String phone;
	private String email;
	private String headImage;
	private Date createTime;
	private Date lastTime;
	private int isLand;
	private int isFrozen;
	private String remark;

}