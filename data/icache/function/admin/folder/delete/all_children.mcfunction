scoreboard players set #icache.dc_found icache.action 0
data modify storage icache:temp dc_scan set from storage icache:cache folder_list
function icache:admin/folder/delete/orphan_loop
execute if score #icache.dc_found icache.action matches 1.. run function icache:admin/folder/delete/all_children