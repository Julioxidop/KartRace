tag @a remove doing_marker
tag @s add doing_marker
scoreboard players set @s .cancel 0
scoreboard players set @s .confirm 0
execute as @s run function kart:marker/give_egg