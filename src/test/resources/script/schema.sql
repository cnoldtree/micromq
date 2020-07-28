DROP TABLE IF EXISTS TestQueue;
CREATE TABLE  IF NOT EXISTS TestQueue (
	msgId BIGINT(20) NOT NULL AUTO_INCREMENT,
	content TEXT NOT NULL,
	client VARCHAR(128) NOT NULL,
	createTime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (msgId),
	INDEX `createTime` (createTime)
)
COLLATE='utf8_general_ci'
AUTO_INCREMENT=1
;

DROP TABLE IF EXISTS TestEmptyQueue;
CREATE TABLE  IF NOT EXISTS TestEmptyQueue (
	msgId BIGINT(20) NOT NULL AUTO_INCREMENT,
	content TEXT NOT NULL,
	client VARCHAR(128) NOT NULL,
	createTime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (msgId),
	INDEX `createTime` (createTime)
)
COLLATE='utf8_general_ci'
AUTO_INCREMENT=1
;

DROP TABLE IF EXISTS MicroMQReceipt;
CREATE TABLE IF NOT EXISTS `MicroMQReceipt` (
	`client` VARCHAR(128) NOT NULL,
	`queue` VARCHAR(128) NOT NULL,
	`msgId` BIGINT(20) NOT NULL,
	`updateTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`client`, `queue`),
	INDEX `updateTime` (`updateTime`)
)
COLLATE='utf8_general_ci'
;