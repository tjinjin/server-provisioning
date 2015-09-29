#
# Cookbook Name:: mackerel
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
yum_package 'mackerel-agent'

directory '/etc/mackerel-agent/conf.d'

cookbook_file '/etc/mackerel-agent/mackerel-agent.conf'
