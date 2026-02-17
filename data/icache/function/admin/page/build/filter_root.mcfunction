execute unless data storage icache:temp fl_scan[0] run return 0
data modify storage icache:temp fl_check set from storage icache:temp fl_scan[0]
execute if data storage icache:temp fl_check{parent:"none"} run data modify storage icache:temp list append from storage icache:temp fl_check
data remove storage icache:temp fl_scan[0]
execute if data storage icache:temp fl_scan[0] run function icache:admin/page/build/filter_root