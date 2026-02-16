scoreboard players operation #icache.idx icache.action = @s icache.action
scoreboard players remove #icache.idx icache.action 300
execute store result storage icache:temp idx int 1 run scoreboard players get #icache.idx icache.action
function icache:admin/item/delete/by_index with storage icache:temp