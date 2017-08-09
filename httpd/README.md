# httpd

#### Installs and Starts Httpd service.

Upload cookbook httpd as follow

  knife cookbook upload httpd

*Adding Recipe to Node Runlist*

```
 knife node run_list add ubuntu_node "recipe[httpd]"
 ```
