$execute in overworld run item replace block 0 -62 0 container.0 from entity @s $(slot)
$data modify storage icache:temp slot_name set value "$(slot)"
execute in overworld run data modify storage icache:temp slot set from block 0 -62 0 Items[0]
execute store result score #item_ver icache.version run data get storage icache:temp slot.components."minecraft:custom_data".icache.version
data modify storage icache:temp id set from storage icache:temp slot.components."minecraft:custom_data".icache.id
function icache:update/pet/do_replace with storage icache:temp
execute in overworld run data modify block 0 -62 0 Items set value []