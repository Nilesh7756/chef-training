# useradd Cookbook

Adds users  from the Databags *Admins* in Chef server.


Databag **admins** should be present on your Chef Server if not create it .

	knife data bag create admins


Create file to *items.json* add items to ***admins*** data bag

*items.json*
```
{
   "id": "tom",
   "uid": 1010,
   "gid": "ops",
   "shell": "/bin/bash",
   "passwd": "test@123",
   "comment": "Smart Tom"
}
```
Add items to databag using below command

	knife data bag from file admins items.json

Upload cookbook using below command

	knife upload cookbook useradd
	
Add to node run_list  as follows 
	
	knife node run_list add <node_name> "recipe[useradd]"
