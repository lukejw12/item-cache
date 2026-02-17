summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:stone",count:1}}
$data modify entity @n[type=item] Item set from storage icache:cache items.$(id).item
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Gave ","color":"green"},{"text":"$(id)","color":"aqua"}]
$function icache:admin/item/expand/expand {id:"$(id)"}