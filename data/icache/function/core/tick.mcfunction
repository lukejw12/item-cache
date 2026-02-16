execute as @a[scores={icache.leave=1..}] run function icache:update/on_join
execute as @a unless score @s icache.leave matches 0.. run function icache:update/on_join
execute as @a[tag=icache.admin] run scoreboard players enable @s icache.action
execute as @a[tag=icache.admin] run scoreboard players enable @s icache.param
execute as @a[tag=icache.admin,scores={icache.action=1..}] run function icache:admin/handle