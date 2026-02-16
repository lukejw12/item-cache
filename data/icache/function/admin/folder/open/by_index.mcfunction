$data modify storage icache:temp target set from storage icache:temp folder_lookup[$(idx)]
data modify storage icache:temp target.folder_name set from storage icache:temp target.name
function icache:admin/folder/open/open with storage icache:temp target