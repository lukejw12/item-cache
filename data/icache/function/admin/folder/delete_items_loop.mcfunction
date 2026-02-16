execute unless data storage icache:temp del_scan[0] run return 0
data modify storage icache:temp del_check set from storage icache:temp del_scan[0]
function icache:admin/folder/delete_items_check with storage icache:temp del_check
data remove storage icache:temp del_scan[0]
execute if data storage icache:temp del_scan[0] run function icache:admin/folder/delete_items_loop