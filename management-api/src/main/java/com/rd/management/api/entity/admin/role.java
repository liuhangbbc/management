package com.rd.management.api.entity.admin;

import java.io.Serializable;
import java.util.Date;

/**
 * @ClassName: role
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年11月23日 下午5:38:57
 * 
 */
public class role implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1910446725650053946L;

	private Long id;
	private String code;
	private Long parentId;
	private String roleName;
	private Date createTime;
	private String description;
	private String remark;

}
