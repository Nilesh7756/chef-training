#
# Cookbook:: phpapp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.



package "apache2"

package "php-common"

package "php-cli"

package "libapache2-mod-php"

service "apache2" do
  action [:enable, :start]
end

remote_directory '/var/www/html/' do
        source "app"
        owner 'root'
        group 'root'
        mode '0755'
        action :create
end

if node['platform'] == 'ubuntu'
  color = '#0000ff' #Red color
else
  color = '#000000' #Black color
end

template "/var/www/html/index.php" do
	source "index.php.erb"
	 owner 'root'
  	group 'root'
  	mode '0755'
	variables( :bgcolor => color )
end
