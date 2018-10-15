name "myrole"
description "role_description"
run_list "recipe[unix_common-config::motd]"
default_attributes "node" => { "myroleattr" => [ "value_from_myrole"] }
