#
# Cookbook Name:: new
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nginx'

apt_package 'curl' do
  action :install
end

template '/etc/nginx/sites-available/default.conf' do
  source 'default.conf.erb'
  owner 'www-data'
  group 'www-data'
  mode '0755'
end

execute 'change ephemeral ports' do
  command 'sudo sysctl -w net.ipv4.ip_local_port_range="20000 64000"'
end

link '/etc/nginx/sites-enabled/default' do
  to '/etc/nginx/sites-available/default.conf'
  notifies :restart, 'service[nginx]'
end