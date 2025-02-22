#CALLED BY ID/ASSIGN_CHAIR_ID

#STORE ID
$execute store result storage simple:chairs chairs.$(lastid).id int 1 run data get storage simple:chairs chairs.lastid

#STORE LOCATION
$execute store result storage simple:chairs chairs.$(lastid).x int 1 run data get storage simple:chairs chairs.lastpos[0]
$execute store result storage simple:chairs chairs.$(lastid).y int 1 run data get storage simple:chairs chairs.lastpos[1]
$execute store result storage simple:chairs chairs.$(lastid).z int 1 run data get storage simple:chairs chairs.lastpos[2]

#say store_location