// Rail Stuff
if (player_collide_object(C_MAIN))
{
if (!audio_is_playing(sfx_beep)) {
    audio_play_sound(sfx_beep, 1, false);
}
create_effect(x - obj_player.hitbox_w * obj_player.facing, y + obj_player.hitbox_h, spr_inv_sparkle, 0.4, depth-1, (3 * obj_player.facing) * dcos(random_range(180, 270)), 3 * dsin(random_range(180, 270)));
    if (obj_player.x_speed >= 0) 
    {
        obj_player.x_speed = max(obj_player.x_speed, 4.5);
    }
    else 
    {
        obj_player.x_speed = min(obj_player.x_speed, -4.5);
    }

    if (abs(obj_player.ground_speed) < 4.5)
    {
        obj_player.ground_speed = 4.5 * sign(obj_player.ground_speed);
        
       
        if (obj_player.ground_speed == 0) obj_player.ground_speed = 4.5;
    }


    obj_player.decel = 0.01; 
}
else
{

    obj_player.decel = 0.08;
}
