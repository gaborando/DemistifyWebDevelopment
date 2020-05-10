CREATE CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
UNWIND [{_id:0, properties:{createdAt:"2020-05-09T21:33:06.4511505", authId:"b846b8be-7b81-4099-9432-4370a02f73ba", username:"user1"}}, {_id:1, properties:{createdAt:"2020-05-09T21:33:06.4521624", authId:"c7770185-1e53-4ac2-b62f-485fdbfc14c8", username:"user2"}}, {_id:2, properties:{createdAt:"2020-05-09T21:33:06.4521624", authId:"876d026a-bb92-4336-b1f2-ab3a28469634", username:"user3"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:User;
UNWIND [{_id:3, properties:{createdAt:"2020-05-09T21:33:07.1001359", lastModifiedAt:"2020-05-09T21:33:07.1001359", content:"Content 1 for toDoList1"}}, {_id:4, properties:{createdAt:"2020-05-09T21:33:07.1001359", lastModifiedAt:"2020-05-09T21:33:07.1001359", content:"Content 1 for toDoList1"}}, {_id:5, properties:{createdAt:"2020-05-09T21:33:07.1001359", lastModifiedAt:"2020-05-09T21:33:07.1001359", content:"Content 2 for toDoList1"}}, {_id:7, properties:{createdAt:"2020-05-09T21:33:07.3511326", lastModifiedAt:"2020-05-09T21:33:07.3511326", content:"Content 2 for toDoList2"}}, {_id:8, properties:{createdAt:"2020-05-09T21:33:07.3511326", lastModifiedAt:"2020-05-09T21:33:07.3511326", content:"Content 1 for toDoList2"}}, {_id:9, properties:{createdAt:"2020-05-09T21:33:07.3511326", lastModifiedAt:"2020-05-09T21:33:07.3511326", content:"Content 1 for toDoList2"}}, {_id:11, properties:{createdAt:"2020-05-09T21:33:07.402134", lastModifiedAt:"2020-05-09T21:33:07.402134", content:"Content 1 for toDoList3"}}, {_id:12, properties:{createdAt:"2020-05-09T21:33:07.402134", lastModifiedAt:"2020-05-09T21:33:07.402134", content:"Content 1 for toDoList3"}}, {_id:13, properties:{createdAt:"2020-05-09T21:33:07.402134", lastModifiedAt:"2020-05-09T21:33:07.402134", content:"Content 2 for toDoList3"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ToDo;
UNWIND [{_id:6, properties:{createdAt:"2020-05-09T21:33:07.1001359", lastModifiedAt:"2020-05-09T21:33:07.1001359", name:"toDoList1"}}, {_id:10, properties:{createdAt:"2020-05-09T21:33:07.3511326", lastModifiedAt:"2020-05-09T21:33:07.3511326", name:"toDoList2"}}, {_id:14, properties:{createdAt:"2020-05-09T21:33:07.402134", lastModifiedAt:"2020-05-09T21:33:07.402134", name:"toDoList3"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ToDoList;
UNWIND [{start: {_id:5}, end: {_id:0}, properties:{}}, {start: {_id:3}, end: {_id:1}, properties:{}}, {start: {_id:4}, end: {_id:0}, properties:{}}, {start: {_id:9}, end: {_id:1}, properties:{}}, {start: {_id:7}, end: {_id:1}, properties:{}}, {start: {_id:8}, end: {_id:2}, properties:{}}, {start: {_id:11}, end: {_id:0}, properties:{}}, {start: {_id:12}, end: {_id:2}, properties:{}}, {start: {_id:13}, end: {_id:2}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CREATED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:6}, end: {_id:0}, properties:{}}, {start: {_id:10}, end: {_id:1}, properties:{}}, {start: {_id:14}, end: {_id:2}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:OWNER]->(end) SET r += row.properties;
UNWIND [{start: {_id:6}, end: {_id:0}, properties:{}}, {start: {_id:10}, end: {_id:1}, properties:{}}, {start: {_id:14}, end: {_id:2}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LAST_MODIFIED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:3}, end: {_id:1}, properties:{}}, {start: {_id:4}, end: {_id:0}, properties:{}}, {start: {_id:5}, end: {_id:1}, properties:{}}, {start: {_id:9}, end: {_id:1}, properties:{}}, {start: {_id:7}, end: {_id:2}, properties:{}}, {start: {_id:8}, end: {_id:2}, properties:{}}, {start: {_id:11}, end: {_id:0}, properties:{}}, {start: {_id:12}, end: {_id:2}, properties:{}}, {start: {_id:13}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LAST_MODIFIED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:3}, end: {_id:6}, properties:{}}, {start: {_id:4}, end: {_id:6}, properties:{}}, {start: {_id:5}, end: {_id:6}, properties:{}}, {start: {_id:7}, end: {_id:10}, properties:{}}, {start: {_id:8}, end: {_id:10}, properties:{}}, {start: {_id:9}, end: {_id:10}, properties:{}}, {start: {_id:11}, end: {_id:14}, properties:{}}, {start: {_id:12}, end: {_id:14}, properties:{}}, {start: {_id:13}, end: {_id:14}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INSIDE]->(end) SET r += row.properties;
UNWIND [{start: {_id:6}, end: {_id:0}, properties:{canDeleteList:true, canEditTodo:true, canEditAcl:true, canEditList:true, canDeleteTodo:true, canAddTodo:true}}, {start: {_id:6}, end: {_id:1}, properties:{canDeleteList:false, canEditTodo:true, canEditAcl:false, canEditList:false, canDeleteTodo:false, canAddTodo:true}}, {start: {_id:10}, end: {_id:1}, properties:{canDeleteList:true, canEditTodo:true, canEditAcl:true, canEditList:true, canDeleteTodo:true, canAddTodo:true}}, {start: {_id:10}, end: {_id:2}, properties:{canDeleteList:false, canEditTodo:true, canEditAcl:false, canEditList:false, canDeleteTodo:false, canAddTodo:true}}, {start: {_id:14}, end: {_id:2}, properties:{canDeleteList:true, canEditTodo:true, canEditAcl:true, canEditList:true, canDeleteTodo:true, canAddTodo:true}}, {start: {_id:14}, end: {_id:0}, properties:{canDeleteList:false, canEditTodo:true, canEditAcl:false, canEditList:false, canDeleteTodo:false, canAddTodo:true}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACL]->(end) SET r += row.properties;
UNWIND [{start: {_id:5}, end: {_id:0}, properties:{}}, {start: {_id:3}, end: {_id:1}, properties:{}}, {start: {_id:4}, end: {_id:0}, properties:{}}, {start: {_id:9}, end: {_id:1}, properties:{}}, {start: {_id:7}, end: {_id:1}, properties:{}}, {start: {_id:8}, end: {_id:2}, properties:{}}, {start: {_id:11}, end: {_id:0}, properties:{}}, {start: {_id:12}, end: {_id:2}, properties:{}}, {start: {_id:13}, end: {_id:2}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:OWNER]->(end) SET r += row.properties;
UNWIND [{start: {_id:6}, end: {_id:0}, properties:{}}, {start: {_id:10}, end: {_id:1}, properties:{}}, {start: {_id:14}, end: {_id:2}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CREATED_BY]->(end) SET r += row.properties;
MATCH (n:`UNIQUE IMPORT LABEL`)  WITH n LIMIT 20000 REMOVE n:`UNIQUE IMPORT LABEL` REMOVE n.`UNIQUE IMPORT ID`;
DROP CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;