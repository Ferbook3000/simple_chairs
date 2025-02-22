#CALLED BY UNINSTALL/NOW_DELETE_THIS_CHAIR

#DELETE LOADING ENTITY
kill @e[type=block_display,tag=sc.load]

#CLEAR STORAGE
data remove storage simple:chairs chairs
#REMOVE SCOREBOARDS
scoreboard objectives remove sc.success
scoreboard objectives remove sc.chair.id

#COMPLETED
function simplechairs:uninstall/uninstallation_completed