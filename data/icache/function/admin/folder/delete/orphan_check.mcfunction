$data modify storage icache:temp _oc_parent set value "$(parent)"
execute if data storage icache:temp {_oc_parent:"none"} run return 0
$execute if data storage icache:cache folder_list[{name:"$(parent)"}] run return 0
$data modify storage icache:temp delete_folder set value "$(name)"
function icache:admin/folder/delete/items
$data remove storage icache:cache folder_list[{name:"$(name)"}]
scoreboard players add #icache.dc_found icache.action 1