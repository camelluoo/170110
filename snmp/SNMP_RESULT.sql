CREATE TABLE if not exists `toptea`.`SNMP_RESULT_XXXX` (
	`ID` int(12)  AUTO_INCREMENT  NOT NULL  COMMENT '主键ID AUTO_INCREMENT' ,	
	`BATCH_ID` int(12)   NOT NULL  COMMENT '批次号 ' ,	
	`IP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  COMMENT '采集IP ' ,	
	`OID` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  COMMENT '编码 ' ,	
	`NAME` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  COMMENT '名称 ' ,	
	`ALIAS_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  COMMENT '别名 ' ,	
	`CONTENT_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  COMMENT '结果OID编码 ' ,	
	`TYPE` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  COMMENT '类别 ' ,	
	`VALUE` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL  COMMENT '采集结果 ' ,	
	`COL_TIME` timestamp(0)   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '采集时间 ' 	
	,PRIMARY KEY (ID) USING BTREE
 	,INDEX `IDX_RESULT_IP` (`BATCH_ID`, `IP`  )
) COMMENT='采集结果明细表' ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
