$data modify storage icache:cache folders.$(folder_name) set value []
$execute unless data storage icache:cache folder_list[{name:"$(folder_name)"}] run data modify storage icache:cache folder_list append value {name:"$(folder_name)",type:"folder"}
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Created folder: ","color":"green"},{"text":"$(folder_name)","color":"aqua"}]
function icache:admin/admin_utils/menu