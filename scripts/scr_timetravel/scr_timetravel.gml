function scr_player_timetravel()
{
    if (global.timetravelingTo == "")
        exit;
    
    // Store current player state BEFORE time travel buildup
    global.obj_player_x     = x - x_speed;
    global.obj_player_y     = y - y_speed;
    global.obj_player_xvel  = x_speed;
    global.obj_player_yvel  = y_speed;
    global.obj_player_gsp   = ground_speed;
    
    // Build-up phase
    if (abs(ground_speed) > 5)
    {
        global.HESABOUTTOTRAVEL += 1;
        global.ttsparkTimer += 1;
        
        if (global.ttsparkTimer > 12)
        {
            instance_create(x, y, obj_timetravelsparks);
            global.ttsparkTimer = 0;
        }
    }
    else if (global.HESABOUTTOTRAVEL < 170)
    {
        global.HESABOUTTOTRAVEL = 0;
    }
    else
    {
        global.HESABOUTTOTRAVEL += 1;
    }
    
    // Trigger time travel
    if (global.HESABOUTTOTRAVEL > 180)
    {
        var room_name = global.stageIndexes[global.zone - 1]
                        + string(global.level)
                        + "_"
                        + global.timetravelingTo;
        
        // Find matching room in the time travel table
        for (var i = 0; i < array_length(global.roomTT); i++)
        {
            if (global.roomTT[i][0] == room_name)
            {
                global.GoToRoom = global.roomTT[i][1];
                break;
            }
        }
        
        // Store final state BEFORE switching rooms
        global.obj_player_x     = (x - x_speed) + radius_x;
        global.obj_player_y     = (y - y_speed) + radius_y;
        global.obj_player_xvel  = x_speed;
        global.obj_player_yvel  = y_speed;
        global.obj_player_gsp   = ground_speed;
        
        global.HESABOUTTOTRAVEL = 0;
        
        room_goto(rm_stage_timetravel_cutscene_past);
    }
    
    // White flash before travel
    if (global.HESABOUTTOTRAVEL == 170)
fade_in_room(1,c_white)
}