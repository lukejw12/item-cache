data modify storage icache:temp folder_items set value []
data modify storage icache:temp lookup set value []
data modify storage icache:temp sub_folders set value []
$data modify storage icache:temp folder_target set value "$(folder_name)"
function icache:admin/folder/build/list
function icache:admin/folder/build/sub_folders
scoreboard players set #icache.index icache.action 0
scoreboard players set #icache.shown icache.action 0
execute store result score #icache.total_items icache.action run data get storage icache:temp folder_items
execute store result score #icache.total_subs icache.action run data get storage icache:temp sub_folders
scoreboard players operation #icache.total icache.action = #icache.total_items icache.action
scoreboard players operation #icache.total icache.action += #icache.total_subs icache.action
data modify storage icache:temp combined set value []
data modify storage icache:temp combined append from storage icache:temp sub_folders[]
data modify storage icache:temp combined append from storage icache:temp folder_items[]
execute store result score #icache.total icache.action run data get storage icache:temp combined
execute store result score #icache.start icache.action run scoreboard players operation #icache.result icache.action = @s icache.page
scoreboard players operation #icache.start icache.action *= #8 icache.action
scoreboard players operation #icache.end icache.action = #icache.start icache.action
scoreboard players add #icache.end icache.action 8
scoreboard players operation #icache.display icache.action = @s icache.page
scoreboard players add #icache.display icache.action 1
execute store result storage icache:temp page_num int 1 run scoreboard players get #icache.display icache.action
$tellraw @s [{"text":"\n\n[F] $(folder_name)","color":"green","bold":true},{"text":" — Page ","color":"gray","bold":false},{"nbt":"page_num","storage":"icache:temp","color":"gray"}]
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}]
function icache:admin/folder/render/combined_loop
execute if score #icache.shown icache.action matches 0 run tellraw @s [{"text":" Empty folder.","color":"gray","italic":true}]
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}]
$function icache:admin/folder/render/nav {folder_name:"$(folder_name)"}