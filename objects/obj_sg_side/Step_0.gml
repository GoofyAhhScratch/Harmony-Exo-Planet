if (player_collide_object(C_MAIN))
{
    // ONLY bounce if moving horizontally
    if (obj_player.state != ST_KNOCKOUT && obj_player.x_speed != 0)
    {
        audio_play_sound(sfx_shield, 1, false);

        // BOUNCE BACK
        obj_player.x_speed = -obj_player.x_speed * 0.6;

        // EXIT COLLISION IN THE CORRECT DIRECTION
        while (player_collide_object(C_MAIN))
        {
            obj_player.x -= sign(obj_player.x_speed);
        }
    }
}
