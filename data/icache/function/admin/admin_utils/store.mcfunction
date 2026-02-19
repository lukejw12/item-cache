execute unless data entity @s SelectedItem run tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" You must be holding an item.","color":"red"}]
execute unless data entity @s SelectedItem run return 0
execute if data entity @s SelectedItem.components."minecraft:custom_data".icache.id run dialog show @s icache:store
execute unless data entity @s SelectedItem.components."minecraft:custom_data".icache.id run dialog show @s icache:store_new