#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'hostnames::default'
include_recipe 'postfix::default'
include_recipe 'apt-periodic::default'
#include_recipe 'aide::default'
#include_recipe 'clamav::default'
include_recipe 'dnsupdate::add_short'
