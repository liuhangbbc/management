DROP TABLE IF EXISTS user_info;

CREATE TABLE user_info (
	id BIGINT (8) NOT NULL PRIMARY KEY auto_increment,
	user_id VARCHAR (255) NOT NULL,
	password VARCHAR (255) NOT NULL,
	gender INT DEFAULT 0,
	real_name VARCHAR (255),
	nick_name VARCHAR (255) NOT NULL,
	birth datetime,
	phone VARCHAR (50),
	email VARCHAR (255) ,
	address VARCHAR (255) ,
	head_image VARCHAR (255) NOT NULL,
	create_time datetime NOT NULL,
    update_time timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	level INT DEFAULT 0 NOT NULL,
	is_land INT DEFAULT 0,
	is_frozen INT DEFAULT 0,
	remark VARCHAR (255)
);