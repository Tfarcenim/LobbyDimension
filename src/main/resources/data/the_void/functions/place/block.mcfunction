setblock ~ ~ ~ smooth_stone
execute align xyz run summon minecraft:armor_stand ~0.5 ~0.19 ~0.5 {Marker:1b,Invulnerable:1,Invisible:1b,NoGravity:1b,Tags:["void_interface","s-core_block"],ArmorItems:[{},{},{},{id:"item_frame",Count:1b,tag:{CustomModelData:15}}]}
kill @s
