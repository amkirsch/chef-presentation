#
# Cookbook Name:: present_test
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#Create users/groups

group "apache" do
  action :create
  append true
end

user "apache" do
  group "apache"
  password "Just4Now"
  manage_home true
  action :create
end

# install httpd via yum

package 'Install Apache' do
  package_name 'httpd'
  arch 'x86_64'
  action :install
end

# Stop Apache if running to change config

service 'httpd' do
  action :stop
end

# Apply config files

#TODO: .erb variables
template '/etc/httpd/conf/httpd.conf' do
  owner "apache"
  group "apache"
  mode 0755
  source "httpd.conf.erb"
  action :create
end

template '/var/www/html/index.html' do
  owner "apache"#
# Cookbook Name:: present_test
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#Create users/groups

group "apache" do
  action :create
  append true
end

user "apache" do
  group "apache"
  password "Just4Now"
  manage_home true
  action :create
end

# install httpd via yum

package 'Install Apache' do
  package_name 'httpd'
  arch 'x86_64'
  action :install
end

# Stop Apache if running to change config

service 'httpd' do
  action :stop
end

# Apply config files

#TODO: .erb variables
template '/etc/httpd/conf/httpd.conf' do
  owner "apache"
  group "apache"
  mode 0755
  source "httpd.conf.erb"
  action :create
end

template '/var/www/html/index.html' do
  owner "apache"
  group "apache"
  mode 0755
  source "index.html.erb"
  action :create
end

# start apache if stopped

#TODO: refactor for best practices; add guards for example
execute "start httpd" do
  owner node[:apache][:os_user]
  command "service httpd enable && service httpd start"
end

# Running chef-solo; no roles/nodes - to much

  group "apache"
  mode 0755
  source "index.html.erb"
  action :create
end

# start apache if stopped

#TODO: refactor for best practices; add guards for example
execute "start httpd" do
  owner node[:apache][:os_user]
  command "service httpd enable && service httpd start"
end

# Running chef-solo; no roles/nodes - too much
