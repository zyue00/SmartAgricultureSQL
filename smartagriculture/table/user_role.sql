create table user_role
(
    id      int auto_increment
        primary key,
    user_id varchar(40) not null,
    role_id int         not null,
    constraint fk_user_role_t_role_1
        foreign key (role_id) references role (id)
            on update cascade on delete cascade,
    constraint fk_user_role_t_user_1
        foreign key (user_id) references user (id)
            on update cascade on delete cascade
);

