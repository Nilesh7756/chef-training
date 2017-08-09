# chef-training
## Make sure you run all commands from chef-repo directory only.

#### To bootstrap a node

**Linux Node**
```
knife bootstrap <serverIP> -x <user> -P <password" -p <ssh-port> -N <node_name> --sudo
```
**OR**

```
knife bootstrap <serverIP> -x <user> -i <path-to-ssh-key> -p <ssh-port> -N <node_name> --sudo
```

**Windows Node**

```
knife bootstrap windows winrm <FQDN> -x Administrator -N "<node_name>" -P '<password>'
```

**To generate cookbook**

```
chef generate cookbook <cookbook_name>
```  

**To upload cookbook to Chef server**

```
knife cookbook upload <cookbook_name>
```



**To add recipe to run_list**
```
knife node run_list add ubuntu_node "recipe[httpd::default]"
```

**To run chef-client using ssh on linux node**

```
knife ssh -x ubuntu "name:<ubuntu_node_name>" "sudo  chef-client" -i  <path-to-ssh-key>
```

**To run chef-client using ssh on windows node**

```
knife winrm 'name:<windows host>' 'chef-client -c c:/chef/client.rb' -m -x <windows_admin_user> -P <windows>
```

