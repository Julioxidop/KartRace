scoreboard objectives remove .kdata
scoreboard objectives remove .marker
scoreboard objectives remove _k_particle
scoreboard objectives remove .players
scoreboard objectives remove .cp
scoreboard objectives remove .sort
scoreboard objectives remove .place


scoreboard objectives add .kdata dummy
scoreboard objectives add .marker dummy
scoreboard objectives add _k_particle dummy
scoreboard objectives add .players dummy
scoreboard objectives add .cp dummy
scoreboard objectives add .sort dummy
scoreboard objectives add .place dummy

scoreboard players set @a .players 0
scoreboard players set .b _k_particle 1
scoreboard players set .arrived .kdata 0

scoreboard players set .mtype .kdata 0
scoreboard players set .wait_action .kdata 0
scoreboard players set .working .kdata 0
scoreboard players set .workingCp .kdata 0
scoreboard players set .started .kdata 0

scoreboard objectives add .confirm minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add .cancel minecraft.dropped:minecraft.carrot_on_a_stick

kill @e[tag=marker]
kill @e[tag=toconfirm_marker]
kill @e[tag=0type_marker]
kill @e[tag=1type_marker]

tag @a remove doing_marker
tag @a remove c1
tag @a remove c2
tag @a remove c3
tag @a remove c4
tag @a remove c5
function kart:_players_reset

clear @a bee_spawn_egg{eggmarker:1b}
clear @a carrot_on_a_stick{action:1b}