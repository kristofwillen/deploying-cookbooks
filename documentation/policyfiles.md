Policyfiles
===========

- Alternative for roles/envs/berks
- Policy => equals a role, eg policy 'webserver'
- Policy groups => equals an environment, eg policy 'acceptance'

how to generate a policy :
- chef generate policy Policyfile.rb or chef generate cookbook my polcookbook -P
  - enter 'name'
  - enter 'default_source'
  - enter 'run_list'
  - You can add attrs per "environment"/polgroups like 
    default['qa'] = { myapp: { database: 'qadbserver01' }} and refer it in cookbooks by node[Chef::Config.policy_group][myapp][database]
- <edit your Policyfile.rb>
- chef install Policyfile.rb (equals Berks install)
  - This will create some extra files in your Policyfile dir (mostly a cookbook dir)
  - This will install all deps
  - This will also create policyfile.lock
- push to Chef server :
  - chef push qa Policyfile.rb
  - or promote it via file : 
    - chef expoert Poliyfile.rb . -a
    - chef push-archive qa Policy-xxx.tar.gz
  - knife bootstrap mywebserver --policy-group qa --policy-name webserver
  - via file : policy_name: webserver, policy_group: qa and chef-client -j attrs.json

Pipelining it to PRD :
- chef show policy webserver
- you'll still need Jenkins
