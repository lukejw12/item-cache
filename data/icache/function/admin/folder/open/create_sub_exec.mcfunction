$execute if data storage icache:cache folder_list[{name:"$(parent)/$(child)"}] run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Folder '$(parent)/$(child)' already exists.","color":"red"}]
$execute if data storage icache:cache folder_list[{name:"$(parent)/$(child)"}] run return 0
$data modify storage icache:cache folder_list append value {name:"$(parent)/$(child)",type:"folder",parent:"$(parent)",display:"$(child)"}
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Created subfolder: ","color":"green"},{"text":"$(parent)/$(child)","color":"aqua"}]
function icache:admin/folder/render/current