cookbook_file '/etc/ssh/ssh-banner' do
  source 'banner.erb'
  owner 'root'
  mode '0644'
  action :create
end

replace '/etc/ssh/sshd-config' do
  replace "#Banner none"
  with    "Banner /etc/ssh/ssh-banner"
  notifies :restart, 'service[sshd]', :immediately
end

service 'sshd' do
  action :nothing
end
