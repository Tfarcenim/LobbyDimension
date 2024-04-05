execute as @a[tag=TVnew] at @s align xyz positioned ~0.5 ~-1 ~0.5 unless entity @e[distance=..0.5,tag=void_interface,type=armor_stand] run function the_void:tp/new
tag @a[tag=TVnew] remove TVnew