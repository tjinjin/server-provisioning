#
# Cookbook Name:: mackerel
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
directory '/etc/mackerel-agent/conf.d

package 'mackerel-agent'
cookbook_file '/etc/mackerel-agent/mackerel-agent.conf'
