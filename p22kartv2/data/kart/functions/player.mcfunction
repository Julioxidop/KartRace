
#trigger when find a marker
execute as @s at @s if entity @e[tag=marker,distance=0..2.5] run function kart:trigger


#cp 1
execute as @s[tag=!c1] if entity @e[tag=checkpoint, scores={.cp=1}, distance=0..2.5] as @s run function kart:checkpoints/c1
execute as @s[tag=!c2] if entity @e[tag=checkpoint, scores={.cp=2}, distance=0..2.5] as @s run function kart:checkpoints/c2
execute as @s[tag=!c3] if entity @e[tag=checkpoint, scores={.cp=3}, distance=0..2.5] as @s run function kart:checkpoints/c3
execute as @s[tag=!c4] if entity @e[tag=checkpoint, scores={.cp=4}, distance=0..2.5] as @s run function kart:checkpoints/c4
execute as @s[tag=!c5] if entity @e[tag=checkpoint, scores={.cp=5}, distance=0..2.5] as @s run function kart:checkpoints/c5

#action bar place
function kart:actionbar