drop schema if exists demo;

create schema demo collate utf8mb4_0900_ai_ci;

use demo;

create table user
(
    id         bigint auto_increment
        primary key,
    auth_id    varchar(255) null,
    created_at datetime(6)  null,
    username   varchar(255) null,
    unique (auth_id),
    unique (username)
);

create table to_do_list
(
    id                  bigint auto_increment
        primary key,
    created_at          datetime(6)  null,
    deleted_at          datetime(6)  null,
    last_modified_at    datetime(6)  null,
    name                varchar(255) null,
    created_by_id       bigint       null,
    deleted_by_id       bigint       null,
    last_modified_by_id bigint       null,
    owner_id            bigint       null,
    foreign key (created_by_id) references user (id),
    foreign key (deleted_by_id) references user (id),
    foreign key (last_modified_by_id) references user (id),
    foreign key (owner_id) references user (id)
);

create table acl
(
    id              bigint auto_increment
        primary key,
    can_add_todo    bit    null,
    can_delete_list bit    null,
    can_delete_todo bit    null,
    can_edit_acl    bit    null,
    can_edit_list   bit    null,
    can_edit_todo   bit    null,
    subject_id      bigint null,
    to_do_list_id   bigint null,
    foreign key (subject_id) references user (id),
    foreign key (to_do_list_id) references to_do_list (id)
);

create table to_do
(
    id                  bigint auto_increment
        primary key,
    checked_at          datetime(6)  null,
    content             varchar(255) null,
    created_at          datetime(6)  null,
    deleted_at          datetime(6)  null,
    last_modified_at    datetime(6)  null,
    checked_by_id       bigint       null,
    created_by_id       bigint       null,
    deleted_by_id       bigint       null,
    last_modified_by_id bigint       null,
    owner_id            bigint       null,
    to_do_list_id       bigint       null,
    foreign key (deleted_by_id) references user (id),
    foreign key (last_modified_by_id) references user (id),
    foreign key (to_do_list_id) references to_do_list (id),
    foreign key (owner_id) references user (id),
    foreign key (checked_by_id) references user (id),
    foreign key (created_by_id) references user (id)
);

