#
# Cookbook Name:: sckb
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


Chef::Log.info("my attribues is #{node['sckb']['testvalue']}")

remote_file node['sckb']['git_path_name'] do
  source node['sckb']['git_source_url']
  action :create
end

execute 'install_git_for windows' do
 command "#{node['sckb']['git_path_name']} /SILENT"
 not_if { File.exists?(node['sckb']['installed_path']) }
end