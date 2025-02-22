#CALLED BY CREATE_CHAIR

#ASSIGN ID
scoreboard players set @s sc.chair.id 1
scoreboard players operation !sc.chair.id sc.chair.id += @s sc.chair.id
#SET ID AND TEMPORARY STORE IT
execute store result storage simple:chairs chairs.lastid int 1 run scoreboard players operation @s sc.chair.id = !sc.chair.id sc.chair.id

#TEMPORARY STORE LOCATION
data modify storage simple:chairs chairs.lastpos set from entity @s Pos

#STORE ID AND LOCATION.
function simplechairs:id/store_location with storage simple:chairs chairs

#ASSIGN SAME ID TO SEAT
execute as @e[type=block_display,tag=sc.seat,distance=..1] unless score @s sc.chair.id matches 0.. run function simplechairs:id/assign_seat_id with storage simple:chairs chairs

#say assign_chair_id