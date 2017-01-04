package com.rd.management.web.master.manage;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.raindrop.utils.CutImgUtil;
import com.rd.management.api.entity.admin.Master;

/**
 * @ClassName: MasterManage
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年12月6日 下午12:08:44
 * 
 */
@Service("masterManage")
public class MasterManage {
	@Value("#{propertiesReader['upload.filepath']}")
	private String filePath;

	/**
	 * 
	 * @param newPwd
	 * @param repeatPwd
	 * @return
	 */
	public boolean comparePwd(String newPwd, String repeatPwd) {
		return true;
	}

	/**
	 * 验证密码是否正确
	 * 
	 * @param master
	 * @param originalPwd
	 * @return
	 */
	public boolean checkPwd(Master master, String originalPwd) {

		return true;
	}

	/**
	 * 
	 * @param queryByCode
	 * @param newPwd
	 * @return
	 */
	public int update(Master queryByCode, String newPwd) {
		return 0;
		// TODO Auto-generated method stub

	}

	/**
	 * @param file
	 * @throws Exception
	 */
	public void saveFile(MultipartFile file, Map<String, Object> data)
			throws Exception {
		File cutFile = new CutImgUtil((Integer) data.get("x"),
				(Integer) data.get("y"), (Integer) data.get("width"),
				(Integer) data.get("height"), file.getOriginalFilename()).cute(file
				.getInputStream());
		/**
		 * 1、获取到file 2、进行剪裁 3、保存图片
		 */
		// 将获取到的文件转移到
		file.transferTo(new File(filePath + "/" + file.getOriginalFilename()));
		// 获取文件缓存目录
		// 复制到目标目录
	}
}
