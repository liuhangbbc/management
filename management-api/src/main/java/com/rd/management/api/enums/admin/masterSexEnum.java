package com.rd.management.api.enums.admin;

/**
 * @ClassName: masterSexEnum
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年12月1日 下午12:05:21
 * 
 */
public enum masterSexEnum {
	SECRECY("保密", 0), MAN("男", 1), WOMAN("女", 2), STRANGE("(눈_눈)", 3);
	// 成员变量
	private String name;
	private int index;

	// 构造方法，注意：构造方法不能为public，因为enum并不可以被实例化
	private masterSexEnum(String name, int index) {
		this.name = name;
		this.index = index;
	}

	// 普通方法
	public static String getName(int index) {
		for (masterSexEnum c : masterSexEnum.values()) {
			if (c.getIndex() == index) {
				return c.name;
			}
		}
		return null;
	}

	// get set 方法
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}
}
