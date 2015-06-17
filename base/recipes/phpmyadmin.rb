#
# Cookbook Name:: base
# Recipe:: phpmyadmin
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "phpmyadmin"

template "/etc/httpd/conf.d/phpmyadmin.conf"

# phpMyAdmin
link "/var/www/html/phpMyAdmin" do
    to node['phpmyadmin']['home']
end

service "httpd" do
  action :reload
end