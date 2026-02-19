$data modify storage icache:temp ex set value {id:"$(keyword)"}
data modify storage icache:temp ex.lore set value 0b
data modify storage icache:temp ex.cdata set value 0b
data modify storage icache:temp ex.attr set value 0b
data modify storage icache:temp ex.ench set value 0b
data modify storage icache:temp ex.tool set value 0b
data modify storage icache:temp ex.food set value 0b
data modify storage icache:temp ex.equip set value 0b
function icache:admin/item/expand/render