#
# Cookbook Name:: tckb
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("This is template recipe")

template '/root/sudoers' do
  source 'sudoers.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables({
    sudoers_groups: node['tckb']['sudo']['groups'],
    sudoers_users: node['tckb']['sudo']['users'],
    sudoers_passwordless: node['tckb']['passwordless']
  })
end