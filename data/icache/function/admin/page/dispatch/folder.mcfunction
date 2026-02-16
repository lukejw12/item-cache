execute store result score #icache.idx icache.action run data get storage icache:temp folder_lookup
data modify storage icache:temp folder_lookup append from storage icache:temp current
scoreboard players add #icache.idx icache.action 200
execute store result storage icache:temp current.open_trigger int 1 run scoreboard players get #icache.idx icache.action
scoreboard players add #icache.idx icache.action 200
execute store result storage icache:temp current.delete_trigger int 1 run scoreboard players get #icache.idx icache.action
function icache:admin/page/render/folder with storage icache:temp current