$data modify storage icache:cache items.$(id) set value {}
$data modify storage icache:cache items.$(id).item set from entity @s SelectedItem
$data modify storage icache:cache items.$(id).folder set value "none"
$execute store result storage icache:cache items.$(id).version int 1 run scoreboard players add $(id) icache.version 1
$execute store result storage icache:cache items.$(id).item.components."minecraft:custom_data".icache.version int 1 run scoreboard players get $(id) icache.version
$execute unless data storage icache:cache item_list[{id:"$(id)"}] run data modify storage icache:cache item_list append value {id:"$(id)"}
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Cached ","color":"green"},{"text":"$(id)","color":"aqua"},{"text":" v"},{"nbt":"items.$(id).version","storage":"icache:cache","color":"aqua"}]