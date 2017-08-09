#
# Cookbook:: winSvr
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
["IIS-WebServerRole", "IIS-WebServer"].each do |feature|
    windows_feature feature do
      action :install
    end
end

service 'w3svc' do
  action [:start, :enable]
end

file 'c:\inetpub\wwwroot\Default.htm' do
  content "<html>
  <body>
    <h1>Hello World #{node['platform']}</h1>
  </body>
</html>"
end
