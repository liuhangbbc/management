package com.rd.management.service.dao.admin;

import com.rd.management.api.entity.admin.Master;

/**
 * 
 * @ClassName: MasterDao
 * @Description: 管理员信息Dao
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年9月18日 下午2:32:48
 *
 */
public interface MasterDao {
	// 新增管理员
	int insert(Master master);

	// 根据id查询管理员信息
	Master queryById(long id);

	// 根据account（账号）查询管理员信息
	Master queryByAccount(String account);

	// 根据code（标识）查询管理员信息
	Master queryByCode(String code);
}
