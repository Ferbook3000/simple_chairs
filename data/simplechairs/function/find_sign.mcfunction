#FIRST CALLED BY START_FIND_SIGN THEN LOOPED BY FIND_SIGN ITSELF

#SIGN FOUND?
execute if block ~ ~ ~ #minecraft:wall_signs run function simplechairs:find_stairs

#REPEAT UNTIL FINDING SIGN
execute if entity @s[distance=..7] unless block ~ ~ ~ #minecraft:wall_signs positioned ^ ^ ^.5 run function simplechairs:find_sign

#say find_sign