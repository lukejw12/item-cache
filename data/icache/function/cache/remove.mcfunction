$data remove storage icache:cache items.$(id)
$data remove storage icache:cache item_list[{id:"$(id)"}]
$scoreboard players reset $(id) icache.version
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Removed ","color":"red"},{"text":"$(id)","color":"aqua"}]
function icache:admin/admin_utils/menu