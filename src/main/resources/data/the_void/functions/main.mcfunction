#Void Interface
execute as @e[tag=void_interface,type=armor_stand] at @s unless block ~ ~ ~ smooth_stone run function the_void:place/break

#Teleporting
execute as @a at @s if predicate the_void:sneak align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[distance=..0.5,tag=void_interface,type=armor_stand] run function the_void:sneak/timer
execute as @a[scores={TVsneak=1..}] at @s run function the_void:sneak/sneaking
execute as @a[scores={TVsneak=0}] at @s run function the_void:tp/stop