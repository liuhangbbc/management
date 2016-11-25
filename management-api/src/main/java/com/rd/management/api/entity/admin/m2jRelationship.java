package com.rd.management.api.entity.admin;

import java.io.Serializable;

/**
 * @ClassName: m2jRelationship
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年11月23日 下午5:52:23
 * 
 */
public class m2jRelationship implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7028225501429942844L;
	private Long id;
	private Long masterId;
	private Long jurisdictionId;
	private int jurisdictionType;
	private String remark;

}
