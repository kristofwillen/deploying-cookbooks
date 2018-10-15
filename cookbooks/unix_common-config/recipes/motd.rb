#
# Cookbook:: unix_common-config
# Recipe:: motd
#
# Copyright:: 2018, The Authors, All Rights Reserved.


template '/etc/motd' do
  owner 'root'
  mode '0644'
  source 'motd.erb'
  action :create
end
