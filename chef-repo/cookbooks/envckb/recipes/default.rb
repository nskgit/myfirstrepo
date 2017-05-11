#
# Cookbook Name:: envckb
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

puts("Fourth version 0.1.3")
Chef::Log.info("This is my Fourth env version 0.1.3")

run_context.cookbook_collection.each do |key, cookbook|
node.set['base_cookbook']['cookbook_versions'][cookbook.name] = cookbook.version
Chef::Log.info("I am in version #{node['base_cookbook']['cookbook_versions'][cookbook.name]}")
end
