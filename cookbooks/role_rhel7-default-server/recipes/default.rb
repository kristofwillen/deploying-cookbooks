#
# Cookbook:: role_rhel7-default-server
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'kwi::handlers'
include_recipe 'chef-client'
include_recipe 'unix_common-config::motd'
include_recipe 'unix_common-config::banner'
include_recipe 'kwi::runstate'
include_recipe 'kwi::testrunstate'
