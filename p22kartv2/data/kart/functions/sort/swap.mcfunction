scoreboard players operation .save .sort = @s .place
scoreboard players operation @s .place = @a[tag=sorting,limit=1] .place
scoreboard players operation @a[tag=sorting,limit=1] .place = .save .sort
tag @a[tag=sorting,limit=1] add stop
tag @s add swaped