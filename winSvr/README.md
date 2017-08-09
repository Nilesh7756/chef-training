# winSvr

#### Installs IIS Webserver.

**Download the Dependency Cookbook from Chef Supermarket**
```
knife cookbook site  install windows
```

**Upload the Downloaded Cookbook to Chef server**
```
knife cookbook upload ohai
```
```
knife cookbook upload windows
```

** You need to mention dependency Windows cookbook in your cookbook metadata.rb(metadata.rb) file**
```
depends 'windows', '~> 3.1.1'
```


**Uploaded new Cookbook that you created**
```
knife cookbook upload winSvr
```



