$execute store result score #cache_ver icache.version run data get storage icache:cache items.$(id).version
execute unless score #item_ver icache.version < #cache_ver icache.version run return 0
$data modify storage icache:temp new_item set from storage icache:cache items.$(id).item
data modify storage icache:temp new_item.count set from storage icache:temp slot.count
execute in overworld run data modify block 0 -62 0 Items[0] set from storage icache:temp new_item
$execute in overworld run item replace entity @s $(slot_name) from block 0 -62 0 container.0
execute in overworld run data modify block 0 -62 0 Items set value []