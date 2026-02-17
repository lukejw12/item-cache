execute unless data storage icache:temp combined[0] run return 0
execute if score #icache.shown icache.action matches 8.. run return 0
data modify storage icache:temp current set from storage icache:temp combined[0]
data remove storage icache:temp combined[0]
execute if score #icache.index icache.action >= #icache.start icache.action if score #icache.index icache.action < #icache.end icache.action run function icache:admin/folder/render/combined_dispatch
scoreboard players add #icache.index icache.action 1
execute if data storage icache:temp combined[0] if score #icache.shown icache.action matches ..7 run function icache:admin/folder/render/combined_loop