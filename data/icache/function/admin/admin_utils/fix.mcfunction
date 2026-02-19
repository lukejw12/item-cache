execute unless data entity @s SelectedItem run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" You must be holding an item.","color":"red"}]
execute unless data entity @s SelectedItem run return 0
execute if data entity @s SelectedItem.components."minecraft:custom_data".icache run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" This item already has iCache data.","color":"red"}]
execute if data entity @s SelectedItem.components."minecraft:custom_data".icache run return 0
dialog show @s icache:fix_item
