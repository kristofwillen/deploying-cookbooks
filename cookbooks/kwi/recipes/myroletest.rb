file '/tmp/myrole' do
  owner 'root'
  mode '0644'
  content "#{node['myroleattr']}"
end
