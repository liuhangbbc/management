package com.rd.management.api.entity.admin;

import java.io.Serializable;

/**
 * @ClassName: m2rRelationship
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年11月23日 下午5:56:19
 * 
 */
public class m2rRelationship implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1270224085155919233L;

	private Long id;
	private Long masterId;
	private Long roleId;
	private String remark;
}
