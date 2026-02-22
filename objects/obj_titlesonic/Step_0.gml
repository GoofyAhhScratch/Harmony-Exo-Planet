// Advance timer in seconds
time += 1 / 60;

//--------------------------------------------------
// 0.0 → 1.2 seconds : Frames 0–5
//--------------------------------------------------
if (!flash_done && time < 1.2) {
    image_index = floor((time / 1.2) * 6);   // frames 0–5
}

//--------------------------------------------------
// 0.9 → 1.2 seconds : Fade to white
//--------------------------------------------------
if (!flash_done && time >= 0.9 && time < 1.2) {
    fade_alpha = (time - 0.9) / 0.3;   // 0 → 1
}

//--------------------------------------------------
// At 1.2 seconds : Flash, spawn BG, switch animation
//--------------------------------------------------
if (!flash_done && time >= 1.2) {

    fade_alpha = 1;  // full white flash

    // Spawn background on the correct layer
    instance_create_layer(x, y, "Background_Layer", obj_mmz_bg);

    // Switch to frame 6
    image_index = 6;

    flash_done = true;

    // Reset timer for next animation phase
    time = 0;

    // IMPORTANT: remove the white fade after the flash
    fade_alpha = 0;
}

//--------------------------------------------------
// After flash: Loop frames 7–8 every 0.3 seconds
//--------------------------------------------------
if (flash_done) {

    // Hold frame 6 for 0.3 seconds
    if (time < 0.3) {
        image_index = 6;
    } else {
        // Loop frames 7 and 8
        var loop_time = time - 0.3;
        var frame = floor(loop_time / 0.3) mod 2; // 0 or 1
        image_index = 7 + frame;
    }
}

//--------------------------------------------------
// Player presses any button → start exit fade
//--------------------------------------------------
if (!exiting) {
    if (keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(0, gp_face1)) {
        exiting = true;
        exit_time = 0;
    }
}

//--------------------------------------------------
// Exit fade logic
//--------------------------------------------------
if (exiting) {
    exit_time += 1 / 60;

    // Fade to black over 0.6 seconds
    exit_fade = clamp(exit_time / 0.6, 0, 1);

    // Once fully black → go to stage select
    if (exit_fade >= 1) {
        fade_to_room(rm_stage_select,1,c_black);
    }
}