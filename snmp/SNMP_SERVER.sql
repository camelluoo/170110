CREATE TABLE if not exists `toptea`.`SNMP_SERVER_XXXX` (
	`IP` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  COMMENT 'IP地址 ' ,	
	`COMMUNITY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  COMMENT '社区名 ' ,	
	`SERVER_VERSION` int(2)   NOT NULL  DEFAULT 1 COMMENT 'SNMP版本 ' ,	
	`PORT` int(5)   NOT NULL  DEFAULT 161 COMMENT '端口 ' ,	
	`SERVER_GROUP` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  DEFAULT 'g1' COMMENT '分组 ' ,	
	`STATE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  DEFAULT 'OK' COMMENT '上次扫描状态 上次指定TOKEN扫描状态' 	
	,PRIMARY KEY (IP) USING BTREE
 	,INDEX `IDX_GROUP` (`SERVER_GROUP`  )
) COMMENT='采集主机表' ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
