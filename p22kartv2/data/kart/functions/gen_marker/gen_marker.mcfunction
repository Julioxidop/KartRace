summon armor_stand ~ ~ ~ {NoGravity:1b, Invisible:0b, Tags:["toconfirm_marker","setting_marker"], ArmorItems:[{},{},{},{id:"minecraft:green_stained_glass",Count:1b}]}
execute as @e[tag=setting_marker] run scoreboard players operation @s .marker = .working .kdata
execute as @e[tag=setting_marker] run tag @s remove setting_marker