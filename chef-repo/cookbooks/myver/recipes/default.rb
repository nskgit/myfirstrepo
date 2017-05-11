#
# Cookbook Name:: myver
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



run_context.cookbook_collection.each do |key, cookbook|
node.set['base_cookbook']['cookbook_versions'][cookbook.name] = cookbook.version
Chef::Log.info("I am in version #{node['base_cookbook']['cookbook_versions'][cookbook.name]}")
end

=begin
Chef::Log.info("File Transfer")


cookbook_file '/tmp/testfile.txt' do
  source 'testfile.txt'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

file '/tmp/testfile.txt' do
  content 'This text to be added to testfile.txt'
  mode '0755'
  owner 'root'
  group 'root'
end
=end

Chef::Log.info("My running platform is #{ node['platform'] }")

if node['platform'] == 'windows'
	Chef::Log.info("Its Windows Platform")
elif
	Chef::Log.info("Its Ubuntu")
	cookbook_file '/tmp/file.txt' do
	    source 'file.txt'
            owner 'root'
            group 'root'
            mode '0755'
            action :create
        end 	
else
	Chef::Log.info("Its OracleLinux")
    
        cookbook_file '/tmp/file.txt' do
            source 'file.txt'
            owner 'root'
            group 'root'
            mode '0755'
            action :create
        end 	
end

#Chef::Log.info("My Value inside LSB & id is  #{ node['lsb']['id'] }")