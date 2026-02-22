if (player_collide_object(C_MAIN))
{
        if(obj_player.state != ST_KNOCKOUT && obj_player.y_speed > 7)
    {
        audio_play_sound(sfx_shield, 1, false);

        // BOUNCE
        obj_player.y_speed = -abs(obj_player.y_speed) * 0.6;

        // FORCE EXIT COLLISION
        obj_player.y -= 4;
    }
}
