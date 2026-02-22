/// @description Draw monitors
	draw_self_floor();
	
	//Stop if destroyed
	if(destroyed) exit;
	
	//Draw the icon
	var ty = floor(y) - 4
	if (image_yscale == -1) ty = (floor(y+32) - 28);
	draw_sprite(monitor_icon, 0, x, ty);
	
	//Draw monitor static
	if (!upsidefall) draw_sprite(spr_monitor_static, min((global.object_timer / 4) mod 30, 7), x, ty);