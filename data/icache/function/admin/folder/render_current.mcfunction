data modify storage icache:temp _nav set value {}
data modify storage icache:temp _nav.folder_name set from storage icache:temp active_folder
function icache:admin/folder/render with storage icache:temp _nav