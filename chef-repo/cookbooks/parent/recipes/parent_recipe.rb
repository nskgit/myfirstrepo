#
# Cookbook Name:: parent
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


Chef::Log.info("This is Parent Receipe. Following to this, fetching Child recipe & attributes")
include_recipe 'child::child_recipe'


Chef::Log.info("Child attribute value is #{node['child']['test']}")


