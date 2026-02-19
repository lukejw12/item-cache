execute unless data storage icache:temp old_enchants run return 0
data modify storage icache:temp merged_ench set value {}
data modify storage icache:temp merged_ench merge from storage icache:temp old_enchants
execute if data storage icache:temp new_item.components."minecraft:enchantments" run data modify storage icache:temp merged_ench merge from storage icache:temp new_item.components."minecraft:enchantments"
data modify storage icache:temp new_item.components."minecraft:enchantments" set from storage icache:temp merged_ench