scoreboard objectives add icache.version dummy
scoreboard objectives add icache.leave minecraft.custom:minecraft.leave_game
scoreboard objectives add icache.page dummy
scoreboard objectives add icache.action trigger
scoreboard objectives add icache.param trigger
scoreboard players set #8 icache.action 8
execute unless data storage icache:cache items run data modify storage icache:cache items set value {}
execute unless data storage icache:cache item_list run data modify storage icache:cache item_list set value []
execute unless data storage icache:cache folder_list run data modify storage icache:cache folder_list set value []
forceload add 0 0
setblock 0 -62 0 minecraft:barrel replace
tellraw @a [{"text":"[iCache]","color":"gold"},{"text":" Loaded successfully.","color":"green"}]