scoreboard players add #icache.shown icache.action 1
execute store result score #icache.idx icache.action run data get storage icache:temp lookup
data modify storage icache:temp lookup append from storage icache:temp current
scoreboard players add #icache.idx icache.action 100
execute store result storage icache:temp current.expand_trigger int 1 run scoreboard players get #icache.idx icache.action
function icache:admin/folder/render_item with storage icache:temp current