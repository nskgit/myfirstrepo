#
# Cookbook Name:: fckb
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello My first cookbook")
=begin

#Directory File

directory '/root/apache2/test1/test2/test3' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end
=end

remote_file 'c:/Chef/Git-2.12.2.2-64-bit.exe' do
  source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
  action :create
end

execute 'install_git_for windows' do
 command 'c:/Chef/Git-2.12.2.2-64-bit.exe /SILENT'
 not_if { File.exists?('C:\Program Files\Git\bin\git.exe')}
end
