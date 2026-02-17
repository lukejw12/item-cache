$execute unless data storage icache:cache folders.$(from) run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Source folder '$(from)' does not exist.","color":"red"}]
$execute unless data storage icache:cache folders.$(from) run return 0
$execute unless data storage icache:cache folders.$(to) run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Destination folder '$(to)' does not exist.","color":"red"}]
$execute unless data storage icache:cache folders.$(to) run return 0
$data modify storage icache:temp mm_from set value "$(from)"
$data modify storage icache:temp mm_to set value "$(to)"
data modify storage icache:temp mm_scan set from storage icache:cache item_list
scoreboard players set #icache.mm_count icache.action 0
function icache:admin/folder/mass_move/loop
$execute if score #icache.mm_count icache.action matches 0 run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" No items found in '$(from)'.","color":"yellow"}]
$execute if score #icache.mm_count icache.action matches 1.. run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Moved all items from '$(from)' to '$(to)'.","color":"green"}]
function icache:admin/admin_utils/menu