package com.rd.management.service.impl.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rd.management.api.entity.user.UserInfo;
import com.rd.management.api.service.user.UserService;
import com.rd.management.service.dao.user.UserInfoDao;

@Service("userService")
public class UserSerivceImpl implements UserService {

	@Autowired
	private UserInfoDao userInfoDao;

	public Integer insertUserInfo(UserInfo userInfo) {
		return userInfoDao.insertUserInfo(userInfo);
	}

}
