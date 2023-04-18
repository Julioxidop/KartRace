scoreboard players set .wait_action .kdata 1
scoreboard players set @a[tag=doing_marker] .cancel 0
scoreboard players set @a[tag=doing_marker] .confirm 0
clear @a[tag=doing_marker] bee_spawn_egg{eggmarker:1b}
give @a[tag=doing_marker] carrot_on_a_stick{display:{Name:'{"text":"Decisión","color":"gold","bold":true}',Lore:['{"text":"Click Derecho: Confirmar","color":"green","italic":false}','{"text":"Tirar: Cancelar","color":"red","italic":false}']},action:1b,Enchantments:[{}]} 1
