$execute if data storage icache:cache items.$(id) run data modify storage icache:temp _was_existing set value 1b
$execute unless data storage icache:cache items.$(id) run data modify storage icache:temp _was_existing set value 0b
$data modify storage icache:cache items.$(id) set value {}
$data modify storage icache:cache items.$(id).item set from entity @s SelectedItem
$data modify storage icache:cache items.$(id).folder set value "none"
$execute store result storage icache:cache items.$(id).version int 1 run scoreboard players add $(id) icache.version 1
$execute store result storage icache:cache items.$(id).item.components."minecraft:custom_data".icache.version int 1 run scoreboard players get $(id) icache.version
$data modify storage icache:cache items.$(id).base_enchantments set from entity @s SelectedItem.components."minecraft:enchantments"
$execute unless data storage icache:cache item_list[{id:"$(id)"}] run data modify storage icache:cache item_list append value {id:"$(id)"}
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Cached ","color":"green"},{"text":"$(id)","color":"aqua"},{"text":" v"},{"nbt":"items.$(id).version","storage":"icache:cache","color":"aqua"}]
$data modify storage icache:temp _last_stored_id set value "$(id)"
execute if data storage icache:temp {_was_existing:0b} run dialog show @s icache:store_folder