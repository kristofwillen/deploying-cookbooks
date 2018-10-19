# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name "Policyfile-webserver"

# Where to find external cookbooks:
default_source :chef_server, "https://api.chef.io/chefkwi"

# run_list: chef-client will run these recipes in the order specified.
run_list "role_rhel7-default-server::default"

# Specify a custom source for a single cookbook:
# cookbook "example_cookbook", path: "../cookbooks/example_cookbook"
