#
# Cookbook Name:: heatlamp
# Spec:: apache2
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Override default site provided by apache2 cookbook
node.override[:apache][:default_site_enabled] = false if node[:apache][:override_default_site]

# Install apache webserver
include_recipe 'apache2'

# This package is needed to make apache2ctl status working
package(node[:lamp][:www_browser])

# Restrictive version of default site template, which return not found for every request
template("#{node[:apache][:dir]}/sites-available/000-default.conf") do
  source 'default-site.conf.erb'
  owner 'root'
  group node[:apache][:root_group]
  mode '0644'
  notifies :restart, 'service[apache2]'
  only_if { node[:apache][:override_default_site] }
end

# Enable overridden virtual host for default site
apache_site '000-default' do
  enable node[:apache][:override_default_site]
end

heatlamp_site 'httpd' do
  homepage '<h1>Welcome to the Example Co. website!</h1>'
  action :create
end
