scoreboard players set TheVoid s-modu-ver 200
execute if score Core s-modu-ver >= TheVoid s-modu-ver run scoreboard players add Valid s-modu-ver 1
execute if score Core s-modu-ver < TheVoid s-modu-ver run function s-core:pack/version

execute if score Core s-modu-ver >= TheVoid s-modu-ver run schedule function the_void:pack/core/valid 2t