package com.rd.management.api.service.user;

import com.rd.management.api.entity.user.UserInfo;

public interface UserService {
	/**
	 * 新增用户
	 * 
	 * @param userInfo
	 * @return
	 */
	Integer insertUserInfo(UserInfo userInfo);
}
