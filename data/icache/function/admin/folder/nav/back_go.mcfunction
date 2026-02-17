$data modify storage icache:temp _nav_parent set value "$(parent)"
$data modify storage icache:temp _nav_target set value {folder_name:"$(parent)"}
execute if data storage icache:temp {_nav_parent:"none"} run function icache:admin/admin_utils/menu
execute unless data storage icache:temp {_nav_parent:"none"} run function icache:admin/folder/open/open with storage icache:temp _nav_target