tag @a remove c1
tag @a remove c2
tag @a remove c3
tag @a remove c4
tag @a remove c5
scoreboard players set @a .players 0
scoreboard players set @a .place 0
scoreboard objectives setdisplay sidebar .players
scoreboard players set .started .kdata 1

scoreboard players operation .random .sort = .b _players
function kart:random_set
tag @a remove random

function kart:timer
function kart:modify/start