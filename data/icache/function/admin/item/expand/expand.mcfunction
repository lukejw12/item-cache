$data modify storage icache:temp last_expanded set value {id:"$(id)"}
data modify storage icache:temp ex set value {lore:0b,cdata:0b,attr:0b,ench:0b,tool:0b,food:0b,equip:0b}
data modify storage icache:temp ex.id set from storage icache:temp last_expanded.id
function icache:admin/item/expand/render