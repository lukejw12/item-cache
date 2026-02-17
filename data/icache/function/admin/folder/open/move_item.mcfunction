$execute unless data storage icache:cache folder_list[{name:"$(folder_name)"}] run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Folder '$(folder_name)' does not exist.","color":"red"}]
$execute unless data storage icache:cache folder_list[{name:"$(folder_name)"}] run return 0
$data modify storage icache:cache items.$(id).folder set value "$(folder_name)"
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Moved ","color":"green"},{"text":"$(id)","color":"aqua"},{"text":" to ","color":"green"},{"text":"$(folder_name)","color":"aqua"}]
function icache:admin/admin_utils/menu