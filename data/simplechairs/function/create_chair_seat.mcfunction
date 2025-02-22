#SUMMON INTERACTION
summon interaction ~ ~-.03 ~ {width:1,height:.9,Tags:["simple.chairs"]}
#SUMMON BLOCK_DISPLAY
$execute at @e[distance=..1.5, type=item_frame, tag=sc.align, limit=1] run summon block_display ~$(x) ~.5 ~$(z) {Tags:["sc.seat"]}

#say create_chair_seat