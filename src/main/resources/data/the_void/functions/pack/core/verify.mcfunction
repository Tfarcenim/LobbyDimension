#core check
scoreboard players add datapack-count s-modu-ver 1
execute if score datapack-count s-modu-ver matches 1 store success score CoreCheck s-modu-ver run function s-core:pack/verif
execute if score datapack-count s-modu-ver matches 1 if score CoreCheck s-modu-ver matches 0 run function the_void:pack/core/none
execute if score CoreCheck s-modu-ver matches 1 run function the_void:pack/core/present
