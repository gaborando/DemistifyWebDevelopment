INSERT INTO demo.user (id, auth_id, created_at, username) VALUES (1, '77232219-61ab-43a9-8505-e6956ed9ff3f', '2020-05-08 21:04:30.789699000', 'user1');
INSERT INTO demo.user (id, auth_id, created_at, username) VALUES (2, '1697b6c3-6516-4152-83d3-e28c3a9bc3fb', '2020-05-08 21:04:30.790702000', 'user2');
INSERT INTO demo.user (id, auth_id, created_at, username) VALUES (3, '851c15b2-5f02-4ccd-9878-24220a8e47b7', '2020-05-08 21:04:30.790702000', 'user3');

INSERT INTO demo.to_do_list (id, created_at, deleted_at, last_modified_at, name, created_by_id, deleted_by_id, last_modified_by_id, owner_id) VALUES (1, '2020-05-08 21:04:31.022647000', null, '2020-05-08 21:04:31.022647000', 'toDoList1', 1, null, 1, 1);
INSERT INTO demo.to_do_list (id, created_at, deleted_at, last_modified_at, name, created_by_id, deleted_by_id, last_modified_by_id, owner_id) VALUES (2, '2020-05-08 21:04:31.127814000', null, '2020-05-08 21:04:31.127814000', 'toDoList2', 2, null, 2, 2);
INSERT INTO demo.to_do_list (id, created_at, deleted_at, last_modified_at, name, created_by_id, deleted_by_id, last_modified_by_id, owner_id) VALUES (3, '2020-05-08 21:04:31.190800000', null, '2020-05-08 21:04:31.190800000', 'toDoList3', 3, null, 3, 3);

INSERT INTO demo.to_do (id, checked_at, content, created_at, deleted_at, last_modified_at, checked_by_id, created_by_id, deleted_by_id, last_modified_by_id, owner_id, to_do_list_id) VALUES (1, null, 'Content 1 for toDoList1', '2020-05-08 21:04:31.022647000', null, '2020-05-08 21:04:31.022647000', null, 1, null, 1, 1, 1);
INSERT INTO demo.to_do (id, checked_at, content, created_at, deleted_at, last_modified_at, checked_by_id, created_by_id, deleted_by_id, last_modified_by_id, owner_id, to_do_list_id) VALUES (2, null, 'Content 2 for toDoList1', '2020-05-08 21:04:31.022647000', null, '2020-05-08 21:04:31.022647000', null, 1, null, 2, 1, 1);
INSERT INTO demo.to_do (id, checked_at, content, created_at, deleted_at, last_modified_at, checked_by_id, created_by_id, deleted_by_id, last_modified_by_id, owner_id, to_do_list_id) VALUES (3, null, 'Content 1 for toDoList1', '2020-05-08 21:04:31.022647000', null, '2020-05-08 21:04:31.022647000', null, 2, null, 2, 2, 1);
INSERT INTO demo.to_do (id, checked_at, content, created_at, deleted_at, last_modified_at, checked_by_id, created_by_id, deleted_by_id, last_modified_by_id, owner_id, to_do_list_id) VALUES (4, null, 'Content 1 for toDoList2', '2020-05-08 21:04:31.127814000', null, '2020-05-08 21:04:31.127814000', null, 2, null, 2, 2, 2);
INSERT INTO demo.to_do (id, checked_at, content, created_at, deleted_at, last_modified_at, checked_by_id, created_by_id, deleted_by_id, last_modified_by_id, owner_id, to_do_list_id) VALUES (5, null, 'Content 2 for toDoList2', '2020-05-08 21:04:31.127814000', null, '2020-05-08 21:04:31.127814000', null, 2, null, 3, 2, 2);
INSERT INTO demo.to_do (id, checked_at, content, created_at, deleted_at, last_modified_at, checked_by_id, created_by_id, deleted_by_id, last_modified_by_id, owner_id, to_do_list_id) VALUES (6, null, 'Content 1 for toDoList2', '2020-05-08 21:04:31.127814000', null, '2020-05-08 21:04:31.127814000', null, 3, null, 3, 3, 2);
INSERT INTO demo.to_do (id, checked_at, content, created_at, deleted_at, last_modified_at, checked_by_id, created_by_id, deleted_by_id, last_modified_by_id, owner_id, to_do_list_id) VALUES (7, null, 'Content 1 for toDoList3', '2020-05-08 21:04:31.190800000', null, '2020-05-08 21:04:31.190800000', null, 3, null, 3, 3, 3);
INSERT INTO demo.to_do (id, checked_at, content, created_at, deleted_at, last_modified_at, checked_by_id, created_by_id, deleted_by_id, last_modified_by_id, owner_id, to_do_list_id) VALUES (8, null, 'Content 2 for toDoList3', '2020-05-08 21:04:31.190800000', null, '2020-05-08 21:04:31.190800000', null, 3, null, 1, 3, 3);
INSERT INTO demo.to_do (id, checked_at, content, created_at, deleted_at, last_modified_at, checked_by_id, created_by_id, deleted_by_id, last_modified_by_id, owner_id, to_do_list_id) VALUES (9, null, 'Content 1 for toDoList3', '2020-05-08 21:04:31.190800000', null, '2020-05-08 21:04:31.190800000', null, 1, null, 1, 1, 3);

INSERT INTO demo.acl (id, can_add_todo, can_delete_list, can_delete_todo, can_edit_acl, can_edit_list, can_edit_todo, subject_id, to_do_list_id) VALUES (1, true, true, true, true, true, true, 1, 1);
INSERT INTO demo.acl (id, can_add_todo, can_delete_list, can_delete_todo, can_edit_acl, can_edit_list, can_edit_todo, subject_id, to_do_list_id) VALUES (2, true, false, false, false, false, true, 2, 1);
INSERT INTO demo.acl (id, can_add_todo, can_delete_list, can_delete_todo, can_edit_acl, can_edit_list, can_edit_todo, subject_id, to_do_list_id) VALUES (3, true, true, true, true, true, true, 2, 2);
INSERT INTO demo.acl (id, can_add_todo, can_delete_list, can_delete_todo, can_edit_acl, can_edit_list, can_edit_todo, subject_id, to_do_list_id) VALUES (4, true, false, false, false, false, true, 3, 3);
INSERT INTO demo.acl (id, can_add_todo, can_delete_list, can_delete_todo, can_edit_acl, can_edit_list, can_edit_todo, subject_id, to_do_list_id) VALUES (5, true, true, true, true, true, true, 3, 3);
INSERT INTO demo.acl (id, can_add_todo, can_delete_list, can_delete_todo, can_edit_acl, can_edit_list, can_edit_todo, subject_id, to_do_list_id) VALUES (6, true, false, false, false, false, true, 1, 3);