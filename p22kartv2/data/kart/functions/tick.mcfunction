#set marker type
execute as @e[tag=unset_marker] run function kart:marker/set_marker

#actions: confirm or cancel
execute if score .wait_action .kdata matches 1 as @a[tag=doing_marker,limit=1] if score @s .cancel matches 1 if score @s .confirm matches 0 run function kart:marker/cancel_action
execute if score .wait_action .kdata matches 1 as @a[tag=doing_marker,limit=1] if score @s .confirm matches 1 if score @s .cancel matches 0 run function kart:marker/confirm_action

#effects
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{action:1b}}}]
execute as @e[tag=working_0] at @s run particle flame ~ ~ ~ ^ ^ ^1000000 0.000001 0
execute as @e[tag=working_1] at @s run particle flame ~ ~ ~ ^ ^ ^1000000 0.000001 0
execute if score .b _k_particle matches 1 as @e[tag=marker,tag=!checkpoint] at @s run particle happy_villager ~ ~0.5 ~ 0 0 0 0 1 
execute if score .b _k_particle matches 1 as @e[tag=checkpoint] at @s run particle angry_villager ~ ~0.5 ~ 0 0 0 0 1 

#GAME
execute if score .started .kdata matches 1 as @a[gamemode=!creative,gamemode=!spectator,tag=!arrived] at @s run function kart:player
execute as @a if score @s .lifetime matches 1.. run tag @s remove not_check
