if (player_collide_object(C_MAIN) && bubblepop == false)
{
    if (obj_player.state != ST_KNOCKOUT)
    {
        // Play the sound
        play_sound(sfx_bubble_jump);

        // Bounce upward
        obj_player.y_speed = -abs(obj_player.y_speed)-5;
		bubblepop = true
		alarm[0] = 240
		visible=false
    }
}
