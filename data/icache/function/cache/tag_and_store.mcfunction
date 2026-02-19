execute unless data entity @s SelectedItem run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" You must be holding an item.","color":"red"}]
execute unless data entity @s SelectedItem run return 0
data modify storage icache:temp fix_slot set from entity @s SelectedItem
$data modify storage icache:temp fix_slot.components."minecraft:custom_data".icache set value {id:"$(id)",version:1}
execute in minecraft:overworld run data modify block 0 -62 0 Items set value []
execute in minecraft:overworld run data modify block 0 -62 0 Items append from storage icache:temp fix_slot
execute in minecraft:overworld run item replace entity @s weapon.mainhand from block 0 -62 0 container.0
execute in minecraft:overworld run data modify block 0 -62 0 Items set value []
$function icache:cache/store {id:"$(id)"}