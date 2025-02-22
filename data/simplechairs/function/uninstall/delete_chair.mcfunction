#CALLED BY NOW_DELETE_THIS_CHAIR

#TP TO CHAIR'S LOCATION
$tp @s $(x) $(y) $(z)
#SCHEDULE KILL CHAIR AND SEAT
schedule function simplechairs:uninstall/kill_chair 2t replace

#say delete_chair