data modify storage icache:temp last_expanded set from storage icache:temp ex
data modify storage icache:temp _r set from storage icache:temp last_expanded
data modify storage icache:temp _r.lore set from storage icache:temp ex.lore
data modify storage icache:temp _r.cdata set from storage icache:temp ex.cdata
data modify storage icache:temp _r.attr set from storage icache:temp ex.attr
data modify storage icache:temp _r.ench set from storage icache:temp ex.ench
data modify storage icache:temp _r.tool set from storage icache:temp ex.tool
data modify storage icache:temp _r.food set from storage icache:temp ex.food
data modify storage icache:temp _r.equip set from storage icache:temp ex.equip
function icache:admin/item/expand/render_view with storage icache:temp _r