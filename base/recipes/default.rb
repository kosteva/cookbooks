#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'hostname::default'
include_recipe 'postfix::default'
include_recipe 'apt-periodic::default'
include_recipe 'aide::default'
include_recipe 'clamav::default'
