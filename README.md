# mysql-clustering
PoC solution for clustering MySQL base

## summary
There is a big monolith database, let's call it global DB.
It stores all users for an app.  
  
Now I add EU DB and US DB  
After that applications would go to the corresponded DB.
In case user moved from EU to US or vice versa, it should get data from global DB to identify the user's local DB.  
And then make a connection to the DB to service such user in his non-native region.  
  
## mechanism
should include locks on the 'foreign' databases  
todo: add diagrams
