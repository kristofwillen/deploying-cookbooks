name 'role_rhel7-default-server'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures role_rhel7-default-server'
long_description 'Installs/Configures role_rhel7-default-server'
version '0.1.0'
depends 'unix_common-config'
depends 'chef-client'
depends 'kwi'
chef_version '>= 12.14' if respond_to?(:chef_version)

