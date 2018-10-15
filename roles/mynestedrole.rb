name "mynestedrole"
description "nested_role_description"
run_list "role[myrole]"
default_attributes "node" => { "myroleattr" => [ "value_from_mynestedrole"] }
