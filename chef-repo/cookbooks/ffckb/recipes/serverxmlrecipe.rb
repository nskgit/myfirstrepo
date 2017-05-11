#
# Cookbook Name:: ffckb
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

service "sshd" do
	action :nothing
end

Chef::Log.info("This is template recipe")

template '/root/server.xml' do
  source 'server.xml.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables({
    portvar: node['ffckb']['port']
  })

  notifies :start,'service[sshd]', :immediate
end