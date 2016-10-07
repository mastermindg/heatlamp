#
# Cookbook Name:: heatlamp
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

mysql_service 'foo' do
  port '3306'
  version '5.7'
  initial_root_password 'changeme'
  action [:create, :start]
end
