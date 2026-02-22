surface_deform(WINDOW_WIDTH, WINDOW_HEIGHT, deform_data, global.object_timer, 1);

// Draw background based on theme
switch (global.menutheme)
{
    case 1: // Christmas theme
        draw_sprite(spr_levsel_bg_jolly, image_index, 0, 0);
        break;

    case 2: // Halloween theme
        draw_sprite(spr_levsel_bg_scary, image_index, 0, 0);
        break;

    default: // Normal theme
        draw_sprite(spr_levsel_bg, image_index, 0, 0);
        break;
}

shader_reset();

//Set the font to use
draw_set_font(global.text_random);

//Wave text!
var DevText = string_upper(final_quote); // <-- FIXED HERE
for (var i = 0; i < string_length(DevText); i++)
{
    var size = string_width(string_copy(DevText, 0, i));
    draw_text(
        floor(((global.window_width/2)-string_width(DevText)/2)+size),
        floor((global.window_height/2)-96-abs(8*dsin((current_time/3)+24*i))),
        string_char_at(DevText, i+1)
    );
}

//Change the text alignment
draw_set_halign(fa_left);

//Get zone array size
var zone_arr = array_length(zone_list);

//Draw list
for (var i = 0; i < zone_arr; ++i)
{
    if (i == zone_sel)
        palette_swap(tex_pal_textselect1, 1);

    draw_text((global.window_width / 2)-128, ((global.window_height/2) - 64)+14*i, zone_list[i][0]);
    draw_text((global.window_width / 2)+64-16, ((global.window_height/2) - 64)+14*i, "ACT:");

    for (var j = 0; j < array_length(zone_list[i]) - 1; ++j)
    {
        if (i == zone_sel && j == act_sel)
            palette_swap(tex_pal_textselect1, 1);
        else
            shader_reset();

        draw_text((global.window_width / 2)+96+(12*j)-16, ((global.window_height/2) - 64)+14*i, string(j+1));
        shader_reset();
    }
}

//Draw sound test
if (zone_sel == zone_arr)
    palette_swap(tex_pal_textselect1, 1);

draw_text((global.window_width / 2)-128, (global.window_height/2) + 64+24, "SOUND TEST: ");
draw_text((global.window_width / 2)+96-16, (global.window_height/2) +64+24, (sound_sel > 9 ? "" : "0") + string(sound_sel));
shader_reset();