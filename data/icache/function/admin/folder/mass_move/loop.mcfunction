execute unless data storage icache:temp mm_scan[0] run return 0
data modify storage icache:temp mm_check set from storage icache:temp mm_scan[0]
function icache:admin/folder/mass_move/check with storage icache:temp mm_check
data remove storage icache:temp mm_scan[0]
execute if data storage icache:temp mm_scan[0] run function icache:admin/folder/mass_move/loop