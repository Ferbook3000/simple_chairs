#CALLED BY ADVANCEMENT SC.INTERACTION.RIGHT_CLICK

#GET CHAIR ID
execute store result storage simple:chairs chairs.lastint int 1 run scoreboard players get @e[type=interaction,tag=simple.chairs,distance=..7,nbt={interaction:{}},sort=nearest,limit=1] sc.chair.id

#SIT
function simplechairs:sit with storage simple:chairs chairs

#REVOKE ADVANCEMENT
advancement revoke @s only simplechairs:sc.interaction.right_click

#say start_sit