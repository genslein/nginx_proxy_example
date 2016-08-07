#
# Cookbook Name:: new
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nginx'

template '/etc/nginx/sites-available/default.conf' do
  source 'default.conf.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

link '/etc/nginx/sites-enabled/default.conf' do
  to '/etc/nginx/sites-available/default.conf'
  link_type :symbolic
  notifies :restart, 'service[nginx]'
end