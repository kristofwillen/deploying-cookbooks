file '/tmp/runstate' do
	content "My name is #{node.run_state['my_name']}"
  owner 'root'
  mode '0644'
  action :create
end
