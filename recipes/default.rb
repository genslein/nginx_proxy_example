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

template '/etc/nginx/sites-available/default' do
  source 'default.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

link '/etc/nginx/sites-enabled/default' do
  to '/etc/nginx/sites-available/default.conf'
  notifies :reload, 'service[nginx]'
end

execute 'change ephemeral ports' do
  command 'sudo sysctl -w net.ipv4.ip_local_port_range="20000 64000"'
end