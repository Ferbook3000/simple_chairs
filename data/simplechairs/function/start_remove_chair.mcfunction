#CALLED BY ADVANCEMENT SC.INTERACTION.LEFT_CLICK

#GET CHAIR ID
execute store result storage simple:chairs chairs.lastatt int 1 run scoreboard players get @e[type=interaction,tag=simple.chairs,distance=..7,nbt={attack:{}},sort=nearest,limit=1] sc.chair.id

#REMOVE CHAIR AND SEAT
function simplechairs:remove_chair with storage simple:chairs chairs

#REVOKE ADVANCEMENT
advancement revoke @s only simplechairs:sc.interaction.left_click

#say start_remove_chair