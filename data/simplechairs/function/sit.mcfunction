#CALLED BY START_SIT

#SIT
$ride @s mount @e[type=block_display,scores={sc.chair.id=$(lastint)},distance=..7,limit=1]

#REMOVE INTERACTION DATA
$data remove entity @e[type=interaction,scores={sc.chair.id=$(lastint)},distance=..7,limit=1] interaction

#say sit