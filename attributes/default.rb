#
# Cookbook Name:: present_test
# Attributes:: default.rb
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# System attributes
default[:apache][:os_user]                      = "apache"
default[:apache][:os_group]                     = "apache"
default[:apache][:os_passwd]                    = "Just4Now"

# Apache attributes
default[:apache][:index_html_file]              = "/var/www/html/index.html"
default[:apache][:index_html_erb]               = "index.html.erb"
default[:apache][:httpd_conf_file]              = "/etc/httpd/conf/httpd.conf"
default[:apache][:httpd_conf_erb]               = "httpd.conf.erb"

# talk about ohai variables
