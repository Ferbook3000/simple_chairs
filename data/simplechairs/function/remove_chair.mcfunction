#CALLED BY START_REMOVE_CHAIR

#REMOVE CHAIR AND SEAT
$kill @e[scores={sc.chair.id=$(lastatt)},distance=..7,limit=2]

#say remove_chair