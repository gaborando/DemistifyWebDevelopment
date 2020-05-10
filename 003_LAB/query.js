/* SELECT ALL USERS */
db.user.find({});

/* SELECT ALL TODO LIST */
db.toDoList.find({}, {acl: 0, toDos: 0});

/* SELECT ALL TODOs */
db.toDoList.aggregate([
    { $unwind :'$toDos'},
    { $project : {todo : '$toDos'
     } }
])

/* SELECT ALL TODO LIST AND RELATIVE TODOs */
db.toDoList.find({}, {acl: 0});

/* SELECT ALL TODO LIST AND RELATIVE TODOs */
db.toDoList.find({});

/* SELECT USER */
db.user.find({"_id":"5eb5d07f839dc33e1de8b846"});

/* SELECT ALL TODO LIST FOR USER */
db.toDoList.find({"owner.userId": "5eb5d07f839dc33e1de8b846"}, {acl: 0, toDos: 0});

/* SELECT ALL TODOs OWNED BY USER */
/* ? */


/* SELECT ALL TODO LIST OWNED BY USER AND RELATIVE TODOs */
db.toDoList.find({"owner.userId": "5eb5d07f839dc33e1de8b846"}, {acl: 0});

/* SELECT ALL TODO LIST OWNED BY USER AND RELATIVE TODOs AND ACL*/
db.toDoList.find({"owner.userId": "5eb5d07f839dc33e1de8b846"});

/* SELECT ALL TODOs THAT I CAN SEE  */
db.toDoList.aggregate([
    { $match: {"acl": { $elemMatch: {"subject.userId": "5eb5d07f839dc33e1de8b846"}}}},
    { $unwind :'$toDos'},
    { $project : {content : '$toDos.content', lastModifiedBy : '$toDos.lastModifiedBy' } },
])















