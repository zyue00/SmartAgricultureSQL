create table farm
(
    id            int auto_increment comment '农田唯一标识符'
        primary key,
    name          varchar(100)                                                      not null comment '农田名称(如:贵州贵阳智慧农业示范园)',
    owner         varchar(100)                                                      not null comment '农场主或管理单位名称',
    total_area    decimal(10, 2)                                                    null comment '总面积(亩)',
    location      geometry                                                          null comment '农田大致地理边界(Polygon)',
    address       varchar(255)                                                      null comment '详细地址',
    contact_phone varchar(20)                                                       null comment '联系电话',
    status        enum ('active', 'inactive', 'archived') default 'active'          null comment '状态:活跃/非活跃/归档',
    create_time   datetime                                default CURRENT_TIMESTAMP null comment '创建时间',
    update_time   datetime                                default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间'
)
    comment '农田表：存储农场/种植园级别信息';

