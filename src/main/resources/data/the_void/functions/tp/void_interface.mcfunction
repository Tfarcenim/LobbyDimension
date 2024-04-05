execute unless entity @e[distance=..0.5,tag=void_interface] positioned ~-15 ~-15 ~-15 unless entity @e[dx=29,dz=29,dy=29,tag=void_interface] at @s align xyz positioned ~0.5 ~-1 ~0.5 run function the_void:tp/new
execute unless entity @e[distance=..0.5,tag=void_interface] positioned ~-15 ~-15 ~-15 as @e[dx=29,dz=29,dy=29,tag=void_interface] run tag @s add void_inrange
execute unless entity @e[distance=..0.5,tag=void_interface] at @e[tag=void_interface,tag=void_inrange,sort=nearest,limit=1] run tp @s ~ ~1 ~

tag @e[tag=void_inrange] remove void_inrange