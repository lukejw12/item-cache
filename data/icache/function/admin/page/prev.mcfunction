scoreboard players remove @s icache.page 1
execute if score @s icache.page matches ..-1 run scoreboard players set @s icache.page 0
function icache:admin/page/render