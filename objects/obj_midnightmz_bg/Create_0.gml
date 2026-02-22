/// @description Add background
	
	//Inherit the parent event
	event_inherited();
	
	//Vertical scroll factor
	var v_scroll = 0;
	
	//Background mode (Used for BG switch)
	bg_mode = 0;
	
	//Add backgrounds, ID starting out from 0, increments by 1 with each background added
	add_background(spr_bg_midnightmz, 0, 0.7, v_scroll, 0, 0, 0, 0);
	add_background(spr_bg_midnightmz, 0, 1, v_scroll, 0, 0, 0, 0);
	add_background(spr_bg_midnightmz, 2, 0.8, v_scroll, 0, 0, 0, 0);
	add_background(spr_bg_midnightmz, 3, 0.9, v_scroll, 0, 0, 0, 0);
	add_background(spr_bg_midnightmz, 4, 1, v_scroll, 0, 0, 0, -500);