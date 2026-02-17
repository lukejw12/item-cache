$execute unless data storage icache:cache items.$(mm_id){folder:"$(mm_from)"} run return 0
$data modify storage icache:cache items.$(mm_id).folder set value "$(mm_to)"
scoreboard players add #icache.mm_count icache.action 1