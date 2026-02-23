/// @description CREATE EVENT
global.dist_surf = -1;
wave_y = 0;

// Use your actual game's native resolution (e.g., 320 or 640)
// This prevents the "mixel" stretching when the window is resized.
game_w = camera_get_view_width(view_camera[0]);
game_h = camera_get_view_height(view_camera[0]);