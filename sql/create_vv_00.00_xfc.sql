create DATABASE IF NOT EXISTS `blog` default charset utf8 COLLATE utf8_general_ci;
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
)Engine=Innodb charset=utf8mb4 COMMENT='用户';

create table `blog`.`role` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `role` varchar(20) NOT NULL COMMENT '角色名',
 PRIMARY KEY (`id`),
 KEY `idx_role` (`role`)
)Engine=Innodb charset=utf8mb4 COMMENT='角色';

insert into `blog`.`role` (`id`, `role`) values (1, 'USER');

create table `blog`.`user_role` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `userId` int(11) NOT NULL COMMENT '',
 `roleId` int(11) NOT NULL COMMENT '',
 PRIMARY KEY (`id`),
 KEY `idx_userId` (`userId`)
)Engine=Innodb charset=utf8mb4 COMMENT='角色';
