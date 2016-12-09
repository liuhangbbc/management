package com.rd.management.service.dao.admin;

import org.apache.ibatis.annotations.Param;

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

	// 根据id或code进行更新
	int updateByMasterInfo(Master master);

	// 修改密码
	int changePassword(Master master);

	// 标记上次登录时间
	int signLastLand(Master master);

	// 改变登录状态
	int changeLandStatus(Master master);

	// 改变冻结状态
	int changeFrozenStatus(Master master);

	int updateMasterPwdByInfo(@Param("master") Master master,
			@Param("password") String password);
}
