CREATE DATABASE IF NOT EXISTS `blog` default charset utf8 COLLATE utf8_general_ci;
create table `blog`.`user` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `uuid` varchar(50) NOT NULL COMMENT 'uuid',
 `nickName` varchar(50) NOT NULL COMMENT '昵称',
 `email` varchar(255) NULL COMMENT '邮箱',
 `avatar` varchar(255) NULL COMMENT '头像',
 `gender` tinyint(4) DEFAULT 0 COMMENT '性别',
 `createTime` bigint(20) NULL COMMENT '创建时间',
 `updateTime` bigint(20) NULL COMMENT '更新时间',
 PRIMARY KEY (`id`),
 KEY `idx_uuid` (`uuid`)
)Engine=Innodb charset=utf8mb4 COMMENT '用户';