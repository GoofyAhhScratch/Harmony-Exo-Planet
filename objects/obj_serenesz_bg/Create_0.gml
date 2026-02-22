/// @description Add background
	
	//Inherit the parent event
	event_inherited();
	
	//Vertical scroll factor
	var v_scroll = 0.88;
	
	//Background mode (Used for BG switch)
	bg_mode = 0;
	
	//Add backgrounds, ID starting out from 0, increments by 1 with each background added
	add_background(spr_serenesz_bg, 0, 0.99, v_scroll, 0, 0, 0, 0);
	add_background(spr_serenesz_bg, 1, 0.96, v_scroll, 0, 0, 0, 0);
	add_background(spr_serenesz_bg, 2, 0.94, v_scroll, 0, 0, 0, 0);
	add_background(spr_serenesz_bg, 3, 0.90, v_scroll, 0, 0, 0, 0);
	add_background(spr_serenesz_bg, 4, 0.87, v_scroll, 0, 0, 0, 0);
	add_background(spr_serenesz_bg, 5, 0.85, v_scroll, 0, 0, 0, 0);
	add_background(spr_serenesz_bg, 6, 0.80, v_scroll, 0, 0, 0, 0);
	add_background(spr_serenesz_bg, 7, 0.77, v_scroll, 0, 0, 0, 0);
	add_background(spr_serenesz_bg, 8, 0.96, 0, 0, 0, 0, 448);
	add_background(spr_serenesz_bg, 9, 0.94, 0, 0, 0, 0, 604)
	
	// Offset frame 8 from the water Y - 256 , set frame 9 to water Y - 100