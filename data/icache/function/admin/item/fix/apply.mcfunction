execute unless data entity @s SelectedItem run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" You must be holding an item.","color":"red"}]
execute unless data entity @s SelectedItem run return 0
execute if data entity @s SelectedItem.components."minecraft:custom_data".icache run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" This item already has iCache data.","color":"red"}]
execute if data entity @s SelectedItem.components."minecraft:custom_data".icache run return 0
$data modify storage icache:temp fix_item set value {id:"$(id)",version:1}
data modify storage icache:temp fix_slot set from entity @s SelectedItem
$data modify storage icache:temp fix_slot.components."minecraft:custom_data".icache set value {id:"$(id)",version:1}
data modify block 0 -62 0 Items set value []
data modify block 0 -62 0 Items append from storage icache:temp fix_slot
item replace entity @s weapon.mainhand from block 0 -62 0 container.0
data modify block 0 -62 0 Items set value []
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Applied iCache data to held item with ID: ","color":"green"},{"text":"$(id)","color":"aqua"}]