execute if entity @s[nbt={Dimension:"minecraft:custom/the_void"}] run scoreboard players set @s TVdim 1
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s TVdim 0

execute if entity @s[scores={TVdim=1}] in minecraft:overworld run tp @s ~ ~1 ~
execute if entity @s[scores={TVdim=0}] in minecraft:custom/the_void run tp @s ~ ~1 ~

tag @s add TVnew
schedule function the_void:tp/void_interface_init 1t