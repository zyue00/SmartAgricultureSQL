create table field
(
    id          int auto_increment comment '地块唯一标识符'
        primary key,
    farm_id     int                                                                 not null comment '所属农田ID，关联farm.id',
    name        varchar(100)                                                        not null comment '地块名称(如:1号大棚、西山玉米地A区)',
    boundary    geometry                                                            not null comment '地块精确地理边界(Polygon)，用于GIS地图绘制',
    area        decimal(8, 2)                                                       not null comment '地块面积(亩)',
    soil_type   enum ('sandy', 'loamy', 'clay', 'silty', 'peat', 'chalky', 'other') null comment '土壤类型:沙质/壤土/黏土/粉土/泥炭/白垩/其他',
    elevation   decimal(6, 2)                                                       null comment '海拔高度(米)',
    description text                                                                null comment '地块描述信息',
    status      enum ('active', 'fallow', 'abandoned') default 'active'             null comment '状态:活跃/休耕/废弃',
    create_time datetime                               default CURRENT_TIMESTAMP    null comment '创建时间',
    update_time datetime                               default CURRENT_TIMESTAMP    null on update CURRENT_TIMESTAMP comment '更新时间',
    constraint field_ibfk_1
        foreign key (farm_id) references farm (id)
            on update cascade on delete cascade
)
    comment '地块表：存储农田内部的具体地块信息';

