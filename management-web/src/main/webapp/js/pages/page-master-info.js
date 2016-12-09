$(function() {
	var map = {};
	var masterId = $('span[data-init-name="id"]').text();
	var masterCode = $('span[data-init-name="code"]').text();
	map['id'] = masterId;
	map['code'] = masterCode;

	// 初始化 模态表单
	initModelForm();
	// 初始化 日历控件
	initDatepicker({});
	// 初始化提示控件
	initPNotify();

	/*
	 * Modal Dismiss 模态表单-取消
	 */
	$(document).on('click', '.modal-dismiss', function(e) {
		e.preventDefault();
		$.magnificPopup.close();
	});

	/*
	 * 个人信息修改
	 */
	$('#infoConfirm').on('click', function(e) {
		$('[data-form-info]').each(function() {
			if ($(this).val()) {
				map[$(this).attr('data-form-info')] = $(this).val();
			}
		});
		console.info('page init confirm > #map# result : ' + map);
		updateInfo(map, e);

	});

	/*
	 * 修改密码
	 */
	$('#pwdConfirm').on('click', function(e) {
		$('[data-form-pwd]').each(function() {
			if ($(this).val()) {
				map[$(this).attr('data-form-pwd')] = $(this).val();
			}
		});
		console.info('page init confirm > #map# result : ' + map);
		updatePwd(map, e);

	});
});

// 修改个人信息
function updateInfo(map, e) {
	$.ajax({
		url : 'updateInfo',
		type : 'POST', // GET
		async : false, // 或false,是否异步
		data : {
			master : JSON.stringify(map)
		},
		dataType : 'json', // 返回的数据格式：json/xml/html/script/jsonp/text
		beforeSend : function(data) {
			// 发送ajax前
		},
		success : function(data) {
			// 发送成功，处理成功
			e.preventDefault();
			$.magnificPopup.close();
			if (data.success) {
				new PNotify({
					title : '成功！',
					text : '表单提交信息成功',
					type : 'success'
				});
				changPageInfo();
			} else {
				new PNotify({
					title : '警告！',
					text : '表单提交出现问题',
					type : 'warning'
				});
			}
		},
		error : function(data) {
			// 发送失败,处理失败
			new PNotify({
				title : '错误！',
				text : '表单提交失败',
				type : 'error'
			});
		},
		complete : function() {
			// ajax结束后
		}
	});
}

// 修改密码
function updatePwd(map, e) {
	$.ajax({
		url : 'changePwd',
		type : 'POST', // GET
		async : false, // 或false,是否异步
		data : {
			map : JSON.stringify(map)
		},
		dataType : 'json', // 返回的数据格式：json/xml/html/script/jsonp/text
		beforeSend : function(data) {
			// 发送ajax前
		},
		success : function(data) {
			// 发送成功，处理成功
			if (data.success) {
				e.preventDefault();
				$.magnificPopup.close();
				new PNotify({
					title : '成功！',
					text : '表单提交信息成功',
					type : 'success'
				});
			} else {
				new PNotify({
					title : '警告！',
					text : data.errorMsg,
					type : 'warning'
				});
				$('.ui-pnotify').addClass('ui-screen-top');
			}
		},
		error : function(data) {
			// 发送失败,处理失败
			new PNotify({
				title : '错误！',
				text : '表单提交失败',
				type : 'error'
			});
		},
		complete : function() {
			// ajax结束后
		}
	});
}

// 上传头像
function upHead() {

}

// 重置页面数据
function changPageInfo() {
	$.ajax({
		url : 'info2',
		type : 'GET', // GET
		async : false, // 或false,是否异步
		dataType : 'json', // 返回的数据格式：json/xml/html/script/jsonp/text
		success : function(data) {
			if (data.success) {
				// 发送成功，处理成功
				console.info("data back result sucess , deal sucess ");
				var master = data.msg;
				for ( var key in master) {
					var result = master[key];
					$('span[data-init-name="' + key + '"]').text(result);
					console.info('master key : ' + key + ' , result : '
							+ result + ' , item key : '
							+ $('span[data-init-name="' + key + '"]'));

					$('[data-form-name="' + key + '"]').val(result);
					console.info('master key : ' + key + ' , result : '
							+ result + ' , item key : '
							+ $('[data-form-name="' + key + '"]'));
				}
			} else {
				// 发送成功，处理失败
				console.info("data back result sucess , deal fault ");
			}
		},
		error : function(data) {
			// 发送失败
			console.info("data back result error ");
		}
	});
}