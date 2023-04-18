#kill bees
kill @e[tag=working_0]
kill @e[tag=working_1]

#confirm markers
execute as @e[tag=toconfirm_marker] run data modify entity @s Invisible set value 1
execute as @e[tag=toconfirm_marker] run data modify entity @s Marker set value 1
execute if score .bounding .kdata matches 0 as @e[tag=toconfirm_marker] run data modify entity @s ArmorItems set value []
tag @e[tag=toconfirm_marker] add marker
tag @e[tag=toconfirm_marker] remove toconfirm_marker

scoreboard players set .wait_action .kdata 0
scoreboard players set .mtype .kdata 0

clear @s carrot_on_a_stick{action:1b}
execute as @s run function kart:marker/give_egg
tellraw @s {"text":"Has confirmado el marcador", "color": "green"}

