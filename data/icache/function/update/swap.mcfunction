data remove storage icache:temp old_enchants
data remove storage icache:temp merged_ench
data remove storage icache:temp old_item
$data modify storage icache:temp new_item set from storage icache:cache items.$(id).item
data modify storage icache:temp new_item.count set from storage icache:temp slot.count
data modify storage icache:temp old_item set from storage icache:temp slot
data modify storage icache:temp old_enchants set from storage icache:temp slot.components."minecraft:enchantments"
execute if data storage icache:temp old_item.components."minecraft:custom_name" run data modify storage icache:temp new_item.components."minecraft:custom_name" set from storage icache:temp old_item.components."minecraft:custom_name"
execute if data storage icache:temp old_item.components."minecraft:damage" run data modify storage icache:temp new_item.components."minecraft:damage" set from storage icache:temp old_item.components."minecraft:damage"
execute if data storage icache:temp old_item.components."minecraft:repair_cost" run data modify storage icache:temp new_item.components."minecraft:repair_cost" set from storage icache:temp old_item.components."minecraft:repair_cost"
function icache:update/references/check_attributes
function icache:update/merge_enchants
execute in minecraft:overworld run data modify block 0 -62 0 Items[0] set from storage icache:temp new_item
$execute in minecraft:overworld run item replace entity @s $(slot_name) from block 0 -62 0 container.0
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Updated ","color":"green"},{"text":"$(id)","color":"aqua"},{"text":" in slot $(slot_name)","color":"gray"}]
execute in minecraft:overworld run data modify block 0 -62 0 Items set value []