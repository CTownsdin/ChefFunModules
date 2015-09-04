#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# resources will be checked and executed in order

# install apache
package "apache2" do
  action :install       # ruby symbol, memory efficient
end

# make sure the service starts on reboot
service "apache2" do
  action [:start, :enable]
end

# make a homepage
cookbook_file "/var/www/index.html" do
  source "index.html"
  mode "0644"
end

