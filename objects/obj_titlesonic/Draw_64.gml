// White fade (flash)
if (fade_alpha > 0) {
    draw_set_color(c_white);
    draw_set_alpha(fade_alpha);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
}

// Black fade (exit)
if (exit_fade > 0) {
    draw_set_color(c_black);
    draw_set_alpha(exit_fade);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
}