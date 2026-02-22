//Essential values
zone_sel = 0;
act_sel = 0;
sound_sel = 0;

//The lists
zone_list = [
    ["MINTY MOUNTAIN", rm_mmz_A, rm_mmz_B, rm_mmz_C],
    ["SAKURA STATION", rm_ssz_A],
	["CHALLANGES", rm_chl_1, rm_chl2]
	
];

reset_stage_data();
global.score = 0;

// Default quotes
quotes = [
    "IM TRAPPED IN MORS CODE HELP",
    "THAT ONE SILLY EXOPLANET",
    "I THINK I SAW A CHICKEN TODAY",
    "MARIO",
    "MOR IS SIGMA"
];

// --- DATE CHECKING (GMS2 SAFE) ---
var d = date_current_datetime();
var month = date_get_month(d);
var day   = date_get_day(d);

// --- MENU THEME LOGIC ---
global.menutheme = 0; // default

// Key overrides FIRST
if (keyboard_check(ord("A"))) {
    global.menutheme = 1; // Christmas theme
}
else if (keyboard_check(ord("S"))) {
    global.menutheme = 2; // Halloween theme
}
else {
    // No key override → use date logic

    // Christmas theme days (NOT actual Christmas)
    if ((month == 4 && day == 4) ||
        (month == 7 && day == 23) ||
        (month == 8 && day == 5) ||
        (month == 11 && day == 1))
    {
        global.menutheme = 1;
    }

    // Christmas day → Halloween theme
    if (month == 12 && day == 25)
    {
        global.menutheme = 2;
    }
}

// --- QUOTE SELECTION ---
quote_index = irandom(array_length(quotes) - 1);
var special_quote = "";

// Special date quotes (FIXED)
if (month == 4 && day == 4) {
    special_quote = "MARRY CRIMIS";
}
else if (month == 7 && day == 23) {
    special_quote = "MARRY CRIMIS";
}
else if (month == 8 && day == 5) {
    special_quote = "MARRY CRIMIS";
}
else if (month == 11 && day == 1) {
    special_quote = "MARRY CRIMIS";
}
else if (month == 12 && day == 25) {
    special_quote = "HAPPE HALLOWEEN"; // Christmas day → Halloween theme
}

// A‑key override for quote
if (keyboard_check_pressed(ord("A"))) {
    special_quote = "MARRY CRIMIS";
}

// Final quote selection
if (special_quote != "") {
    final_quote = special_quote;
} else {
    final_quote = quotes[quote_index];
}

//Randomize the BG
image_speed = 0;
image_index = 0;

// --- MUSIC BASED ON THEME ---
switch (global.menutheme)
{
    case 1: // Christmas
        play_music(BGM_JOLLY);
        break;

    case 2: // Halloween
        play_music(BGM_SCARY);
        break;

    default: // Normal
        play_music(BGM_MENU);
        break;
}

// Fade in
fade_in_room(5);

//Create stage data
for (var i = 0; i < 128; ++i) {
    deform_data[i] = 12 * dsin((360 / 128) * i) + random_range(-3, 3);
}