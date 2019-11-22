DROP TABLE IF EXISTS toptea.sequence; 
CREATE TABLE toptea.`sequence` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '序列的名字',
  `current_value` int(11) NOT NULL COMMENT '序列的当前值',
  `increment` int(11) NOT NULL DEFAULT '1' COMMENT '序列的自增值',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP FUNCTION IF EXISTS toptea.nextval; 
DELIMITER $ 
CREATE FUNCTION nextval (seq_name VARCHAR(50)) 
     RETURNS INTEGER 
     LANGUAGE SQL 
     DETERMINISTIC 
     CONTAINS SQL 
     SQL SECURITY DEFINER 
     COMMENT '' 
BEGIN 
	DECLARE val,inc INTEGER; 
	select ifnull(max(current_value),-1) into val from sequence WHERE name = seq_name; 
	if(val = -1) Then
		INSERT INTO sequence VALUES (seq_name, 0, 1);
		return 0;
	else
		UPDATE sequence 
		    SET current_value = val + 1
		    WHERE name = seq_name; 
	end if;
	RETURN val+1;
END 
$ 
DELIMITER ; 