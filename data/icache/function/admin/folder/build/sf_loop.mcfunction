execute unless data storage icache:temp sf_scan[0] run return 0
data modify storage icache:temp sf_check set from storage icache:temp sf_scan[0]
function icache:admin/folder/build/sf_match with storage icache:temp
data remove storage icache:temp sf_scan[0]
execute if data storage icache:temp sf_scan[0] run function icache:admin/folder/build/sf_loop