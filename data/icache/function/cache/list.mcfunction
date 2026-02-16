$data modify block 0 0 0 Items[0] set from storage icache:cache items.$(id).item
$item replace entity @s $(slot_name) from block 0 0 0 container.0
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Updated ","color":"green"},{"text":"$(id)","color":"aqua"},{"text":" in slot $(slot_name)","color":"gray"}]
data modify block 0 0 0 Items set value []