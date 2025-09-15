create table role_permission
(
    id            int auto_increment
        primary key,
    role_id       int not null,
    permission_id int not null,
    constraint fk_role_permission_t_permission_1
        foreign key (permission_id) references permission (id)
            on update cascade on delete cascade,
    constraint fk_role_permission_t_role_1
        foreign key (role_id) references role (id)
            on update cascade on delete cascade
);

