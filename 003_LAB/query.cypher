/* SELECT ALL USERS */
MATCH (u:User) RETURN u;

/* SELECT ALL TODO LIST */
MATCH (todoList:ToDoList) RETURN todoList;

/* SELECT ALL TODOs */
MATCH (todo:ToDo) RETURN todo;

/* SELECT ALL TODO LIST AND RELATIVE TODOs */
MATCH (todoList:ToDoList) <- [inside:INSIDE] - (todo:ToDo) RETURN todoList, inside, todo;
 
/* SELECT ALL TODO LIST AND RELATIVE TODOs AND ACL*/
MATCH p = (user:User) <- [acl:ACL] - (todoList:ToDoList) <- [inside:INSIDE] - (todo:ToDo) RETURN p;


/* SELECT USER */
MATCH (u:User) where ID(u) = 0 RETURN u;
MATCH (u:User) where u.username = "user1" RETURN u;

/* SELECT ALL TODO LIST FOR USER */
MATCH (todoList:ToDoList) - [:OWNER] -> (u:User)  where ID(u) = 0 RETURN todoList;

/* SELECT ALL TODOs OWNED BY USER */
MATCH (todo:ToDo) - [:INSIDE] -> (todoList:ToDoList) - [:OWNER] -> (u:User)  where ID(u) = 0  RETURN todo;

/* SELECT ALL TODO LIST OWNED BY USER AND RELATIVE TODOs */
MATCH (user:User) <- [:OWNER] - (todoList:ToDoList) <- [inside:INSIDE] - (todo:ToDo) where ID(user) = 0  RETURN todoList, inside, todo;

/* SELECT ALL TODO LIST OWNED BY USER AND RELATIVE TODOs AND ACL*/
MATCH p = (user:User) <- [acl:ACL] - (todoList:ToDoList) <- [inside:INSIDE] - (todo:ToDo), (todoList) - [:OWNER] -> (owner:User) where ID(owner) = 0 RETURN p;
MATCH p = (user:User) <- [acl:ACL] - (todoList:ToDoList) <- [inside:INSIDE] - (todo:ToDo),q = (todoList) - [:OWNER] -> (owner:User) where ID(owner) = 0 RETURN p, q;

/* SELECT ALL TODOs THAT I CAN SEE  */
MATCH (todo:ToDo) - [:INSIDE] -> (todoList:ToDoList) - [:ACL] -> (u:User)  where ID(u) = 0  RETURN todo;





























