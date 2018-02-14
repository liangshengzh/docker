config server init
```javascript
rs.initiate( {
   _id : "mongo-config-set",
   configsvr: true,
   members: [
      { _id: 0, host: " mongo-config-01.lab:27017" },
      { _id: 1, host: " mongo-config-02.lab:27017" },
      { _id: 2, host: " mongo-config-03.lab:27017" }
   ]
})
```
