#change to 1type of the next marker
scoreboard players set .mtype .kdata 1

#set marker 0type
tag @s add 0type_marker
#prevent overflow
tag @s add done_marker

#remove unset
tag @s remove unset_marker
