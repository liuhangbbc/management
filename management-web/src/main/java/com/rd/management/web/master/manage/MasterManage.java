package com.rd.management.web.master.manage;

import java.io.File;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.raindrop.utils.CutImgUtil;
import com.rd.management.api.entity.admin.Master;
import com.rd.management.api.exepction.DBRuntimeException;
import com.rd.management.api.exepction.UtilRuntimeException;
import com.rd.management.api.service.admin.MasterService;

/**
 * @ClassName: MasterManage
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author liuhang liuhangbbc@sina.com
 * @date 2016年12月6日 下午12:08:44
 * 
 */
@Service("masterManage")
public class MasterManage {
	private final Logger logger = Logger.getLogger(this.getClass());

	@Value("#{propertiesReader['upload.filepath']}")
	private String filePath;

	@Value("#{propertiesReader['server.upload']}")
	private String uploadPath;

	@Autowired
	private MasterService masterService;

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
	 * 1、获取到file 2、进行剪裁 3、保存图片
	 * 
	 * @param file
	 * @throws Exception
	 */
	public String saveFile(MultipartFile file, String[] data) throws Exception {
		CutImgUtil cutImgUtil = new CutImgUtil(Integer.parseInt(data[0]),
				Integer.parseInt(data[1]), Integer.parseInt(data[2]),
				Integer.parseInt(data[3]), file.getOriginalFilename(), filePath);
		File cutFile = cutImgUtil.cute(file.getInputStream());
		// file.transferTo(new File(filePath + "/"
		// +file.getOriginalFilename()));
		// 保存图片
		if (cutFile == null) {
			throw new UtilRuntimeException("image cut failed !!");
		}
		return cutImgUtil.getFileName();
	}

	/**
	 * 在获取了上传了图片后保存文件名
	 * 
	 * @param id
	 * @param code
	 * @param sessionCode
	 * @param fileName
	 */
	public void saveImg(Long id, String code, String sessionCode,
			String fileName) {
		Master master = null;
		if (id != null) {
			master = masterService.queryById(id);
		} else if (StringUtils.hasText(code)) {
			master = masterService.queryByCode(code);
		} else if (StringUtils.hasText(sessionCode)) {
			master = masterService.queryByCode(sessionCode);
		}
		if (sessionCode == null) {
			throw new DBRuntimeException("the master is null.");
		}
		master.setHeadImage(uploadPath + "/" + fileName);
		masterService.updateByMasterInfo(master);
		logger.info("头像更新成功");
	}

	/**
	 * @param code
	 * @return
	 */
	public Master queryByCode(String code) {
		return masterService.queryByCode(code);
	}

	/**
	 * @param id
	 * @return
	 */
	public Object queryById(Long id) {
		return masterService.queryById(id);
	}

	/**
	 * @param master
	 * @return
	 */
	public int updateByMasterInfo(Master master) {
		return masterService.updateByMasterInfo(master);
	}

	/**
	 * @param code
	 * @param newPwd
	 * @return
	 * @throws Exception
	 */
	public int updateMasterPwdByCode(String code, String newPwd)
			throws Exception {
		return masterService.updateMasterPwdByCode(code, newPwd);
	}

	/**
	 * @param account
	 * @param originalPwd
	 * @return
	 * @throws Exception
	 */
	public boolean checkLogin(String account, String originalPwd)
			throws Exception {
		return masterService.checkLogin(account, originalPwd);
	}
}
