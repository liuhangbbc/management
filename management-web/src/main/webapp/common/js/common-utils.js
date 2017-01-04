function initDatepicker(theme) {

	/*
	 * Datepicker
	 */
	'use strict';

	if ($.isFunction($.fn['datepicker'])) {

		$(function() {
			$('[data-plugin-datepicker]').each(function() {
				var $this = $(this), opts = {};

				var pluginOptions = $this.data('plugin-options');
				if (pluginOptions)
					opts = pluginOptions;

				$this.themePluginDatePicker(opts);
			});
		});

	}

	var instanceName = '__datepicker';

	var PluginDatePicker = function($el, opts) {
		return this.initialize($el, opts);
	};

	PluginDatePicker.defaults = {};

	PluginDatePicker.prototype = {
		initialize : function($el, opts) {
			if ($el.data(instanceName)) {
				return this;
			}

			this.$el = $el;

			this.setVars().setData().setOptions(opts).build();

			return this;
		},

		setVars : function() {
			this.skin = this.$el.data('plugin-skin');

			return this;
		},

		setData : function() {
			this.$el.data(instanceName, this);

			return this;
		},

		setOptions : function(opts) {
			this.options = $.extend(true, {}, PluginDatePicker.defaults, opts);

			return this;
		},

		build : function() {
			this.$el.datepicker(this.options);

			if (!!this.skin) {
				this.$el.data('datepicker').picker.addClass('datepicker-'
						+ this.skin);
				console.info('asd');
			}

			return this;
		}
	};

	// expose to scope
	$.extend(theme, {
		PluginDatePicker : PluginDatePicker
	});

	// jquery plugin
	$.fn.themePluginDatePicker = function(opts) {
		return this.each(function() {
			var $this = $(this);

			if ($this.data(instanceName)) {
				return $this.data(instanceName);
			} else {
				return new PluginDatePicker($this, opts);
			}

		});
	}

}

function initModelForm() {
	/*
	 * Form
	 */
	$('.modal-with-form').magnificPopup({
		type : 'inline',
		preloader : false,
		focus : '#name',
		modal : true,

		// When elemened is focused, some mobile browsers in some cases zoom in
		// It looks not nice, so we disable it:
		callbacks : {
			beforeOpen : function() {
				if ($(window).width() < 700) {
					this.st.focus = false;
				} else {
					this.st.focus = '#name';
				}
			}
		}
	});

}
function initPNotify() {
	// use font awesome icons if available
	if (typeof PNotify != 'undefined') {
		PNotify.prototype.options.styling = "fontawesome";

		$.extend(true, PNotify.prototype.options, {
			shadow : false,
			stack : {
				spacing1 : 15,
				spacing2 : 15
			}
		});

		$.extend(PNotify.styling.fontawesome, {
			// classes
			container : "notification",
			notice : "notification-warning",
			info : "notification-info",
			success : "notification-success",
			error : "notification-danger",

			// icons
			notice_icon : "fa fa-exclamation",
			info_icon : "fa fa-info",
			success_icon : "fa fa-check",
			error_icon : "fa fa-times"
		});
	}
}

// 对Date的扩展，将 Date 转化为指定格式的String
// 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，
// 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)
// 例子：
// (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423
// (new Date()).Format("yyyy-M-d h:m:s.S") ==> 2006-7-2 8:9:4.18
Date.prototype.Format = function(fmt) { // author: meizz
	var o = {
		"M+" : this.getMonth() + 1, // 月份
		"d+" : this.getDate(), // 日
		"h+" : this.getHours(), // 小时
		"m+" : this.getMinutes(), // 分
		"s+" : this.getSeconds(), // 秒
		"q+" : Math.floor((this.getMonth() + 3) / 3), // 季度
		"S" : this.getMilliseconds()
	// 毫秒
	};
	if (/(y+)/.test(fmt))
		fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "")
				.substr(4 - RegExp.$1.length));
	for ( var k in o)
		if (new RegExp("(" + k + ")").test(fmt))
			fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k])
					: (("00" + o[k]).substr(("" + o[k]).length)));
	return fmt;
}