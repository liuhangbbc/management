package com.rd.management.service.dao.user;

import com.rd.management.api.entity.user.UserInfo;


public interface UserInfoDao {
	// 新增用户信息
	int insertUserInfo(UserInfo userInfo);
}
