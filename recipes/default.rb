#
# Cookbook Name:: new
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'
include_recipe 'nginx'

apt_package 'curl' do
  action :install
end

template '/etc/nginx/sites-available/default' do
  source 'default.conf.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

link '/etc/nginx/sites-enabled/default' do
  to '/etc/nginx/sites-available/default'
  notify :restart, 'service[nginx]'
end