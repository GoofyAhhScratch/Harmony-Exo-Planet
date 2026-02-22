if (player_collide_object(C_MAIN))
{
    // ONLY bounce if moving horizontally
    if (obj_player.state != ST_KNOCKOUT && obj_player.x_speed != 0)
    {
        audio_play_sound(sfx_shield, 1, false);

        // BOUNCE BACK
        if (obj_player.ground) {
             obj_player.ground_speed = -obj_player.ground_speed * 1.1;

       } else {
            obj_player.x_speed = -obj_player.x_speed * 1.1;
       }
        // EXIT COLLISION IN THE CORRECT DIRECTION
        while (player_collide_object(C_MAIN))
        {
            if (obj_player.ground) {
                obj_player.x += sign(obj_player.ground_speed)
            } else {
                obj_player.x += sign(obj_player.x_speed);
           }
        }
    }
}