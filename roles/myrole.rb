name "myrole"
description "role_description"
run_list "recipe[kwi::myroletest]"
default_attributes "node" => { "myroleattr" => [ "value_from_myrole"] }
