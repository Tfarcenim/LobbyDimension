scoreboard players add @s TVsneak 1

execute if score @s TVsneak matches 10 run function the_void:tp/start
execute if score @s TVsneak matches 120 run function the_void:tp/tp
execute if score @s TVsneak matches 180 run scoreboard players set @s TVsneak 0