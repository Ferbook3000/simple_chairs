#YOU DON'T WANT TO HAVE MY DATAPACK IN YOUR WORLD?! O-OK!! I-IT'S NOT LIKE I WANTED IT TO BE IN YOUR WORLD ANYWAYS!!... B-BAKA!!!

#STARTING UNINSTALL
tellraw @s {"text":"Starting uninstall. DO NOT DISCONNECT OR DISMOUNT. This might take a while..."}
#SUMMON LOADING ENTITY
execute at @s run summon block_display ~ ~ ~ {Tags:["sc.load"]}
#RIDE LOADING ENTITY [DEBUGGING'NT]
ride @s mount @e[type=block_display,tag=sc.load,limit=1]
#GET AMOUNT OF CHAIRS
execute store result storage simple:chairs chairs.current_chair int 1 run scoreboard players operation !sc.chairs.left sc.chair.id = !sc.chair.id sc.chair.id
#DELETE CHAIRS
function simplechairs:uninstall/now_delete_this_chair with storage simple:chairs chairs

#say uninstall