# mysql-clustering
PoC solution for clustering MySQL base

## summary
there is a big monolith database, let's call it bigDB  
number of shards (shard1, shard2, shardN)  
each shard has only the data for local users  
if there is non-local user we go to bigDB and fetch user from bigDB
