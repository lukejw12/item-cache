$data modify storage icache:cache items.$(id).folder set value "$(folder_name)"
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Moved ","color":"green"},{"text":"$(id)","color":"aqua"},{"text":" to ","color":"green"},{"text":"$(folder_name)","color":"aqua"}]
function icache:admin/menu