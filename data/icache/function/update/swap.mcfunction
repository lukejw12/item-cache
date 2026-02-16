$data modify storage icache:temp new_item set from storage icache:cache items.$(id).item
data modify storage icache:temp new_item.count set from storage icache:temp slot.count
data modify block 0 0 0 Items[0] set from storage icache:temp new_item
$item replace entity @s $(slot_name) from block 0 0 0 container.0
$tellraw @s [{"text":"[iCache]","color":"gold"},{"text":" Updated ","color":"green"},{"text":"$(id)","color":"aqua"},{"text":" in slot $(slot_name)","color":"gray"}]
data modify block 0 0 0 Items set value []