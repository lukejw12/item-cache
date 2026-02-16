execute unless data storage icache:temp scan[0] run return 0
data modify storage icache:temp check set from storage icache:temp scan[0]
function icache:admin/folder/build_list_check with storage icache:temp check
data remove storage icache:temp scan[0]
execute if data storage icache:temp scan[0] run function icache:admin/folder/build_list_loop