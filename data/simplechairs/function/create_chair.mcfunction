#CALLED BY FIND_SECOND_SIGN

#SUMMON ITEM FRAME
summon minecraft:item_frame ~ ~ ~ {Tags:["sc.align"],Facing:1b}

#CREATE CHAIR AND SEAT BASED ON THE DIRECTION THE STAIRS ARE FACING
execute if block ~ ~ ~ #minecraft:stairs[facing=south] at @e[distance=..1.5, type=item_frame, tag=sc.align, limit=1] run function simplechairs:create_chair_seat {x:0,z:-.25}
execute if block ~ ~ ~ #minecraft:stairs[facing=north] at @e[distance=..1.5, type=item_frame, tag=sc.align, limit=1] run function simplechairs:create_chair_seat {x:0,z:.25}
execute if block ~ ~ ~ #minecraft:stairs[facing=west] at @e[distance=..1.5, type=item_frame, tag=sc.align, limit=1] run function simplechairs:create_chair_seat {x:.25,z:0}
execute if block ~ ~ ~ #minecraft:stairs[facing=east] at @e[distance=..1.5, type=item_frame, tag=sc.align, limit=1] run function simplechairs:create_chair_seat {x:-.25,z:0}

#DELETE ITEM FRAME
kill @e[distance=..1.5, type=item_frame, tag=sc.align, limit=1]

#ASSIGN ID
execute as @e[type=interaction,tag=simple.chairs,distance=..1.5] unless score @s sc.chair.id matches 0.. run function simplechairs:id/assign_chair_id

#say create_chair