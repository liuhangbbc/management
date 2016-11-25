package com.rd.management.api.entity.admin;

import java.io.Serializable;

/**
 * @ClassName: j2rRelationship
 * @Description: TODO(这里用一句话描述这个类的作用)
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
	private Long jurisdictionId;
	private int jurisdictionType;
	private String remark;

}
