function checkLogin() {
	var account = $('#account').val();
	var password = $('#password').val();
	console.info('account result : ' + account + ' ; password result : '
			+ password);

	if (account == null || account == '') {
		console.info('master login failed.');
		console.info('errorMsg : the account cannot be null or empty');
		return;
	}

	if (password == null || password == '') {
		console.info('master login failed.');
		console.info('errorMsg : the account cannot be null or empty.');
		return;
	}
	if (password.length < 6) {
		console.info('master login failed.');
		console.info('errorMsg : The password size must large than six.');
		return;
	}
	$.ajax({
		type : "POST",
		url : "checkLogin",
		data : {
			account : account,
			password : password
		},
		success : function(data) {
			if (data.success) {
				console.info('master login successful.');
				
				window.location.href="/m/manage/index";
			} else {
				console.info('master login failed.');
				console.info('errorMsg : ' + data.errorMsg + ' ; errorCode : '
						+ data.errorCode);
			}
		},
		error : function(data) {
			console.error('The function has error : ' + data.statusText);
		}
	});
}

function KeyDown() {
  if (event.keyCode == 13)
  {
    event.returnValue=false;
    event.cancel = true;
    checkLogin();
  }
}