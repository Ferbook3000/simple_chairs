#CALLED BY DELETE_CHAIR

#KILL INTERACTION ENTITY
execute at @e[type=block_display,tag=sc.load,limit=1] run kill @e[type=interaction,tag=simple.chairs,distance=..3]
#KILL BLOCK DISPLAY
execute at @e[type=block_display,tag=sc.load,limit=1] run kill @e[type=block_display,tag=sc.seat,distance=..3]

#say delete_chair