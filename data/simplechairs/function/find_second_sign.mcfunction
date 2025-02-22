#CALLED BY FIND_STAIRS

#VERIFY EXISTENCE OF SECOND SIGN
$execute store success score #sc.success sc.success positioned ~$(x) ~ ~$(z) if block ~ ~ ~ #minecraft:wall_signs
#SUMMON INTERACTION AT STAIR'S LOCATION
execute if score #sc.success sc.success matches 1 run function simplechairs:create_chair

#RESET SUCCESS SCOREBOARD
scoreboard players reset #sc.success sc.success

#say find_second_sign