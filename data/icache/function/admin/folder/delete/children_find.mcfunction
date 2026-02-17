execute unless data storage icache:temp dc_scan[0] run return 0
data modify storage icache:temp dc_check set from storage icache:temp dc_scan[0]
$execute if data storage icache:temp dc_check{parent:"$(target)"} run function icache:admin/folder/delete/children_do with storage icache:temp dc_check
data remove storage icache:temp dc_scan[0]
execute if data storage icache:temp dc_scan[0] run function icache:admin/folder/delete/children_find with storage icache:temp dc_args