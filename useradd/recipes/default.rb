#
# Cookbook:: useradd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


 admin = data_bag('admins')



 admin.each do |login|
  admin = data_bag_item('admins', login)
  home = "/home/#{login}"

   if node['etc']['group']["#{admin['gid']}"]
        user(login) do
          uid       admin['uid']
          gid       admin['gid']
          shell     admin['shell']
          comment   admin['comment']
          password admin["passwd"]
          home      home
          manage_home true
        end
   else

        group "#{admin['gid']}"

         user(login) do
             uid       admin['uid']
             gid       admin['gid']
             shell     admin['shell']
             comment   admin['comment']
             password admin["passwd"]
             home      home
             manage_home true
         end
   end
end
