package com.rd.management.api.entity.admin;

import java.io.Serializable;

/**
 * @ClassName: jurisdiction
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年11月23日 下午5:43:04
 * 
 */
public class jurisdiction implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5618195659248934351L;

	private Long id;
	private String code;
	private Long parentId;
	private String jurName;
	private String description;
	private String remark;
}
