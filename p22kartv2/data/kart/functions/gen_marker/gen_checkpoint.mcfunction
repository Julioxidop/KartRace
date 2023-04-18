summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:green_stained_glass",Count:1b}], NoGravity:1b, Invisible:0b, Tags:["toconfirm_marker","setting_marker","checkpoint"]}
execute as @e[tag=setting_marker] run scoreboard players operation @s .cp = .workingCp .kdata
execute as @e[tag=setting_marker] run scoreboard players operation @s .marker = .working .kdata
execute as @e[tag=setting_marker] run tag @s remove setting_marker