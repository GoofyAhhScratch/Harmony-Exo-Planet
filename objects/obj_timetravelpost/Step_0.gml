if(player_collide_object(C_MAIN) && obj_player.state !=ST_KNOCKOUT)
{
	        play_sound(sfx_past);
        
        if (global.timezone == 3 || global.timezone == 4)
            global.timetravelingTo = "A";
        else
            global.timetravelingTo = "B";
}
			