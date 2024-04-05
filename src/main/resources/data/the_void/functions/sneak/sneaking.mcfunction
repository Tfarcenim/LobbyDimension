execute unless predicate the_void:sneak align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[distance=..0.5,tag=void_interface,type=armor_stand] run scoreboard players set @s TVsneak 0
execute align xyz positioned ~0.5 ~-1 ~0.5 unless entity @e[distance=..0.5,tag=void_interface,type=armor_stand] run scoreboard players set @s TVsneak 0
