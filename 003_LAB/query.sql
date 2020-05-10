/* SELECT ALL USERS */
SELECT * from user;

/* SELECT ALL TODO LIST */
SELECT * from to_do_list;

/* SELECT ALL TODOs */
SELECT * from to_do;

/* SELECT ALL TODO LIST AND RELATIVE TODOs */
/* VERSION 1  - 1 query*/
SELECT * from to_do_list tdl inner join to_do td on tdl.id = td.to_do_list_id;
/* VERSION 2  - multiple query*/
SELECT * from to_do_list tdl;
    -- FOREACH todoList in above query
    SELECT * from to_do where to_do_list_id = :list_id;

/* SELECT ALL TODO LIST AND RELATIVE TODOs AND ACL*/
/* VERSION 1  - 1 query*/
SELECT * from to_do_list tdl inner join to_do td on tdl.id = td.to_do_list_id inner join acl a on tdl.id = a.to_do_list_id;
/* VERSION 2  - multiple query*/
SELECT * from to_do_list tdl;
    -- FOREACH todoList in above query
    SELECT * from to_do where to_do_list_id = :list_id;
    SELECT * from acl where to_do_list_id = :list_id;


/* SELECT USER */
SELECT * from user where id = 1;

/* SELECT ALL TODO LIST FOR USER */
SELECT * from to_do_list where owner_id = 1;

/* SELECT ALL TODOs OWNED BY USER */
SELECT * from to_do where owner_id = 1;

/* SELECT ALL TODO LIST OWNED BY USER AND RELATIVE TODOs */
/* VERSION 1  - 1 query*/
SELECT * from to_do_list tdl inner join to_do td on tdl.id = td.to_do_list_id where tdl.owner_id = 1;
/* VERSION 2  - multiple query*/
SELECT * from to_do_list tdl where tdl.owner_id = 1;
    -- FOREACH todoList in above query
    SELECT * from to_do where to_do_list_id = :list_id;

/* SELECT ALL TODO LIST OWNED BY USER AND RELATIVE TODOs AND ACL*/
/* VERSION 1  - 1 query*/
SELECT * from to_do_list tdl inner join to_do td on tdl.id = td.to_do_list_id inner join acl a on tdl.id = a.to_do_list_id where tdl.owner_id = 1;
/* VERSION 2  - multiple query*/
SELECT * from to_do_list tdl where tdl.owner_id = 1;
    -- FOREACH todoList in above query
    SELECT * from to_do where to_do_list_id = :list_id;
    SELECT * from acl where to_do_list_id = :list_id;

/* SELECT ALL TODOs THAT I CAN SEE */
SELECT * from to_do td inner join acl a on td.to_do_list_id = a.to_do_list_id where a.subject_id = 1;

































