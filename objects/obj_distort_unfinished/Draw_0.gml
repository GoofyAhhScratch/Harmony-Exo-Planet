/// @description DRAW EVENT

var cam = view_camera[0];
var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);

// 1. Ensure surface exists at NATIVE resolution
if (!surface_exists(global.dist_surf)) {
    global.dist_surf = surface_create(game_w, game_h);
}

// 2. Grab only what has been drawn so far (Backgrounds/Tiles)
surface_set_target(global.dist_surf);
draw_clear_alpha(c_black, 0);
// This draws the game 1:1 onto the surface
draw_surface_part(application_surface, 0, 0, game_w, game_h, 0, 0);
surface_reset_target();

// 3. THE "TAME" DATA
// We use many 0s so most of the screen is untouched.
// We use tiny decimals (0.1) so it doesn't "tear" the tiles.
var distort_data = [
    0, 0, 0, 0, 0, 0, 0, 0, 
    0.05, 0.1, 0.15, 0.1, 0.05, 
    0, -0.05, -0.1, -0.15, -0.1, -0.05,
    0, 0, 0, 0, 0, 0, 0, 0
];

// 4. Move the "line" slowly
wave_y += 0.1; 

// 5. Apply the effect
// We use floor() on the time/offset to keep it pixel-perfect
var scroll_pos = floor(wave_y) + (current_time / 2000);
surface_deform(game_w, game_h, distort_data, scroll_pos);

// 6. Final Draw (Snapped to whole pixels to prevent blur)
draw_surface(global.dist_surf, floor(cx), floor(cy));