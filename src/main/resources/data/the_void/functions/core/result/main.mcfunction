tag @s add s-core_valid
data modify storage content count_remove set from block ~ ~ ~ Items
data modify entity @s ArmorItems[3].tag.recipe.result set from block ~ ~ ~ Items[{Slot:15b}]
data remove storage content count_remove[{Slot:15b}]
function s-core:table/count_remove
data modify entity @s ArmorItems[3].tag.recipe.grid set from storage content count_remove