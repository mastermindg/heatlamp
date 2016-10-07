#
# Cookbook Name:: heatlamp
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'heatlamp::mysql'
include_recipe 'heatlamp::apache2'