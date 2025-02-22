#CALLED BY UNINSTALL/UNINSTALL AND UNINSTALL/NEXT_CHAIR

#DELETE CHAIR
$execute as @e[type=block_display,tag=sc.load,limit=1] run function simplechairs:uninstall/delete_chair with storage simple:chairs chairs.$(current_chair)

#STORE CHAIRS LEFT
execute store result storage simple:chairs chairs.current_chair int 1 run scoreboard players remove !sc.chairs.left sc.chair.id 1

#UNINSTALLATION COMPLETED
execute if score !sc.chairs.left sc.chair.id matches ..0 run schedule function simplechairs:uninstall/remove_data 2t replace

#REPEAT UNTIL NO CHAIRS LEFT
execute unless score !sc.chairs.left sc.chair.id matches ..0 run schedule function simplechairs:uninstall/next_chair 4t replace

#say now_delete_this_chair