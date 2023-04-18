execute as @e[tag=working_1] if entity @s[tag=checkpoint] run scoreboard players remove .workingCp .kdata 1
kill @e[tag=toconfirm_marker]
kill @e[tag=working_0]
kill @e[tag=working_1]
scoreboard players remove .working .kdata 1

scoreboard players set .wait_action .kdata 0
scoreboard players set .mtype .kdata 0
clear @s carrot_on_a_stick{action:1b}
execute as @s run function kart:marker/give_egg
tellraw @s {"text":"Has cancelado el marcador", "color": "red"}