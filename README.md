# mysql-clustering
PoC solution for clustering a MySQL base

## vocabulary
Global DB, the monolith - a big monolith DB which I do have, stores users.    
local DBs, the shards - (non-existing yet) DBs to store local clients in local DBs in the same region.  

## summary
I have Global DB, which struggles with workload in 'high season'.  
Also it struggles with maintenance tasks,  
because of the global avaibility of the app,  
so there is no 'low' hours anymore.
  
Now I add EU DB and US DB.  
After that applications would go to the corresponded DB.
In case user moved from EU to US or vice versa, it should get data from global DB to identify the user's local DB.  
And then make a connection to the DB to service such user in his non-native region.  
  
## mechanism
should include locks on the 'foreign' databases  
todo: add diagrams

## what I hope achieve for?
1) the global DB always under heavy read load. Now, we would move most "read" load from the themonolith to shards.  
2) the global DB always under heavy write load. Now, we could afford to make "delayed" writing to the monolith.
3) the local DBs (shards) could follow local national restrictions applied to DBs  
4) the local DBs have all the load from the local markets and could be scaled correspondingly  
5) the local DBs could have their own maintenance windows  
