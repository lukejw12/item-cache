$data modify storage icache:temp target set from storage icache:temp lookup[$(idx)]
data modify storage icache:temp move_id set from storage icache:temp target.id
dialog show @s icache:move_item
