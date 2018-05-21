INSERT INTO sys_authority VALUES ('2', 'wyf', '2017-12-01 00:00:00', null, '2017-12-01 00:00:00', '查看demo', 'query-demo');
INSERT INTO sys_authority VALUES ('3', 'wyf', '2017-12-01 00:00:00', null, '2017-12-01 00:00:00', '查看order', 'query-order');


INSERT INTO sys_role VALUES ('3', 'wyf', '2017-12-01 00:00:00', null, '2017-12-01 00:00:00', '管理员', 'ROLE_ADMIN');
INSERT INTO sys_role VALUES ('4', 'wyf', '2017-12-01 00:00:00', null, '2017-12-01 00:00:00', '普通用户', 'ROLE_USER');


INSERT INTO sys_role_authorities VALUES ('3', '2');
INSERT INTO sys_role_authorities VALUES ('3', '3');



INSERT INTO sys_user VALUES ('5', 'wyf', '2017-12-01 00:00:00', null, '2017-12-01 00:00:00', null, null, null, null, '$2a$10$XOVs4Z1YtPKqKwQVywG9j.xLAqXYRQLGZMGMrZDNbtl6pUC0Weteq', 'admin');
INSERT INTO sys_user VALUES ('6', 'wyf', '2017-12-01 00:00:00', null, '2017-12-01 00:00:00', null, null, null, null, '$2a$10$WjApX3bMw1KfzckGCCOB.eXRNY61ZcwsqpNzc2yiHtjsqnS3LmXAS', 'wyf');



INSERT INTO sys_user_roles VALUES ('5', '3');
INSERT INTO sys_user_roles VALUES ('6', '4');

