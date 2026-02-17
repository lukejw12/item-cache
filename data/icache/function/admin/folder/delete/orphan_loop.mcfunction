execute unless data storage icache:temp dc_scan[0] run return 0
data modify storage icache:temp dc_check set from storage icache:temp dc_scan[0]
function icache:admin/folder/delete/orphan_check with storage icache:temp dc_check
data remove storage icache:temp dc_scan[0]
execute if data storage icache:temp dc_scan[0] run function icache:admin/folder/delete/orphan_loop