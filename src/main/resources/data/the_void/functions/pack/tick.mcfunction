function the_void:main
execute as @e[tag=worktable,tag=!s-core_remove] if score @s s-core_table matches 1.. at @s run function the_void:core/check
