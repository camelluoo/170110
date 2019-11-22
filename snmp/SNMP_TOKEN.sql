CREATE TABLE if not exists `toptea`.`SNMP_TOKEN_XXXX` (
	`ID` int(12)  AUTO_INCREMENT  NOT NULL  COMMENT '编码 AUTO_INCREMENT' ,	
	`OID` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  COMMENT 'MIB编码 ' ,	
	`NAME` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  COMMENT '名称 ' ,	
	`ALIAS_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  COMMENT '别名 ' ,	
	`MODE` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  DEFAULT 'GET' COMMENT '模式 ' ,	
	`TYPE` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  DEFAULT '系统参数' COMMENT '类别 ' ,	
	`TOKEN_GROUP` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  DEFAULT 'g1' COMMENT '分组 ' 	
	,PRIMARY KEY (ID) USING BTREE
 	,INDEX `IDX_OID` (`OID`, `TOKEN_GROUP`  )
 	,INDEX `IDX_TOKEN_TYPE` (`TYPE`  )
) COMMENT='指标表' ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
