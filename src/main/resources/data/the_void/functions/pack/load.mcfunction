function the_void:scores

#core check
scoreboard objectives add s-modu-ver dummy
scoreboard players reset datapack-count s-modu-ver
schedule function the_void:pack/core/verify 1t
