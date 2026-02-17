$execute if data storage icache:cache folder_list[{name:"$(folder_name)"}] run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Folder '$(folder_name)' already exists.","color":"red"}]
$execute if data storage icache:cache folder_list[{name:"$(folder_name)"}] run return 0
$data modify storage icache:cache folder_list append value {name:"$(folder_name)",type:"folder",parent:"none",display:"$(folder_name)"}
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Created folder: ","color":"green"},{"text":"$(folder_name)","color":"aqua"}]
function icache:admin/admin_utils/menu