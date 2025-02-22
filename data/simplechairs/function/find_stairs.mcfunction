#CALLED BY FIND_SIGN

execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:stairs run function simplechairs:find_second_sign {x:0,z:1}
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:stairs run function simplechairs:find_second_sign {x:1,z:0}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:stairs run function simplechairs:find_second_sign {x:0,z:-1}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:stairs run function simplechairs:find_second_sign {x:-1,z:0}

#say find_stairs