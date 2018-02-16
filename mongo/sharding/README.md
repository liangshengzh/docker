config server init
```javascript
rs.initiate( {
   _id : "mongo-config-set",
   configsvr: true,
   members: [
      { _id: 0, host: "config01.mongo.lab:27017" },
      { _id: 1, host: "config02.mongo.lab:27017" },
      { _id: 2, host: "config03.mongo.lab:27017" }
   ]
})
```
shard01 server init
```javascript
rs.initiate({
  _id: "mongo-shard-set-01",
  members: [
    { _id: 0, host: "shard01a.mongo.lab:27017" },
    { _id: 1, host: "shard01b.mongo.lab:27017" },
    { _id: 2, host: "shard01c.mongo.lab:27017" }
  ]
})
```


shard02 server init
```javascript
rs.initiate({
  _id: "mongo-shard-set-02",
  members: [
    { _id: 0, host: "shard02a.mongo.lab:27017" },
    { _id: 1, host: "shard02b.mongo.lab:27017" },
    { _id: 2, host: "shard02c.mongo.lab:27017" }
  ]
})
```

sharding config
```javascript
sh.addShard("mongo-shard-set-01/shard01a.mongo.lab:27017")
sh.addShard("mongo-shard-set-01/shard01b.mongo.lab:27017")
sh.addShard("mongo-shard-set-01/shard01c.mongo.lab:27017")

sh.addShard("mongo-shard-set-02/shard02a.mongo.lab:27017")
sh.addShard("mongo-shard-set-02/shard02b.mongo.lab:27017")
sh.addShard("mongo-shard-set-02/shard02c.mongo.lab:27017")
```
