function player_timetravel()
{
    // Stop if nothing to travel to
    if (global.timetravelingTo == "") return;

    // Handle travel sparks if moving fast
    if (abs(obj_player.ground_speed) > 5)
    {
        global.HESABOUTTOTRAVEL += 1;
        global.ttsparkTimer += 1;

        if (global.ttsparkTimer > 12)
        {
            instance_create_layer(obj_player.x, obj_player.y, "Objects", obj_timetravelsparks);
            global.ttsparkTimer = 0;
        }
    }
    else
    {
        if (global.HESABOUTTOTRAVEL < 170)
            global.HESABOUTTOTRAVEL = 0;
        else
            global.HESABOUTTOTRAVEL += 1;
    }

    // Trigger room travel
    if (global.HESABOUTTOTRAVEL > 180)
    {
        // Compute destination room index
        var room_name = global.stageIndexes[global.zone-1] 
                        + string(global.level) 
                        + "_" 
                        + global.timetravelingTo;

        for (var i = 0; i < array_length(global.roomTT); i++)
        {
            if (global.roomTT[i][0] == room_name)
            {
                global.GoToRoom = global.roomTT[i][1];
                break;
            }
        }

        // Mark that we just time traveled
        global.justTimeTraveled = true;

        // Reset counter
        global.HESABOUTTOTRAVEL = 0;

        // Fade to the new room
        fade_to_room(global.GoToRoom, 7, c_white);
    }
}