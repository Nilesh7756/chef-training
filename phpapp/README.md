# phpapp

Upload cookbook as follows
```
knife cookbook upload phpapp

```
Adding to runlists as follows.

```
	knife node run_list add <node_name> "recipe[phpapp]"
```
