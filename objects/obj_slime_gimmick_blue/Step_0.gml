if (player_collide_object(C_MAIN))
{
        if(obj_player.state != ST_KNOCKOUT && obj_player.y_speed > 4)
    {
        audio_play_sound(sfx_shield, 1, false);

        // BOUNCE
        obj_player.y_speed = -abs(obj_player.y_speed) * 1.2;

        // FORCE EXIT COLLISION
        obj_player.y -= 8;
    }
}
