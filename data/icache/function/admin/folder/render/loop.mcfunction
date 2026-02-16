execute unless data storage icache:temp folder_items[0] run return 0
execute if score #icache.shown icache.action matches 8.. run return 0
data modify storage icache:temp current set from storage icache:temp folder_items[0]
data remove storage icache:temp folder_items[0]
execute if score #icache.index icache.action >= #icache.start icache.action if score #icache.index icache.action < #icache.end icache.action run function icache:admin/folder/open/dispatch_item
scoreboard players add #icache.index icache.action 1
execute if data storage icache:temp folder_items[0] if score #icache.shown icache.action matches ..7 run function icache:admin/folder/render/loop