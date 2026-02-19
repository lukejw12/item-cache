data modify storage icache:temp list set value []
data modify storage icache:temp lookup set value []
data modify storage icache:temp folder_lookup set value []
data modify storage icache:temp fl_scan set from storage icache:cache folder_list
function icache:admin/page/build/filter_root
function icache:admin/page/build/list
scoreboard players set #icache.index icache.action 0
scoreboard players set #icache.shown icache.action 0
scoreboard players set #icache.entry icache.action 0
execute store result score #icache.total icache.action run data get storage icache:temp list
execute store result score #icache.start icache.action run scoreboard players operation #icache.result icache.action = @s icache.page
scoreboard players operation #icache.start icache.action *= #8 icache.action
scoreboard players operation #icache.end icache.action = #icache.start icache.action
scoreboard players add #icache.end icache.action 8
scoreboard players operation #icache.display icache.action = @s icache.page
scoreboard players add #icache.display icache.action 1
execute store result storage icache:temp page_num int 1 run scoreboard players get #icache.display icache.action
execute store result score #icache.item_count icache.action run data get storage icache:cache item_list
execute store result storage icache:temp item_count int 1 run scoreboard players get #icache.item_count icache.action
function icache:admin/page/render/header with storage icache:temp
function icache:admin/page/render/loop
execute if score #icache.shown icache.action matches 0 run tellraw @s [{"text":" No items on this page.","color":"gray","italic":true}]
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}]
function icache:admin/page/render/footer
