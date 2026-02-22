function init_music_list()
{
	//Menu background music:
	music_add(BGM_MENU, bgm_trackermenu, 0.565);
	music_add(BGM_SCARY, bgm_scary ,0.00,0.00,false);
	music_add(BGM_JOLLY, bgm_jolly ,0.00,0.00,false);
	music_add(BGM_TITLE, bgm_titlescreen,0.00,0.00,false)
	
	//Stage background music:
	music_add(BGM_ARBOREAL_1, bgm_arboreal_agate1);
	music_add(BGM_ARBOREAL_2, bgm_arboreal_agate2);
	music_add(BGM_TEST_1, bgm_test1);
	music_add(BGM_MMZ_PRESENT,bgm_mmz_present);
	music_add(BGM_MMZ_PAST,bgm_mmz_past);
	music_add(BGM_SSZ_PRESENT,bgm_ssz_present);
	music_add(BGM_SSHZ_PRESENT,bgm_sshz_A);
	//Game jingles:
	music_add(J_GAME_OVER, j_game_over, 0.00, 0.00, false);
	music_add(J_INVINCIBLE, j_invincible, 0.00, 0.00, false);
	music_add(J_SPEEDSHOE, j_speedshoe, 0.00, 0.00, false);
	music_add(J_ACT_CLEAR, jingle_zone_complete, 0.00, 0.00, false);
	//Challange Levels
	music_add(BGM_EEZ,bgm_eez);	
	music_add(BGM_MIDNIGHTMZ,bgm_midnightmz);
}

	//Setup macros for music ID
	#macro BGM_MENU 0
	#macro J_GAME_OVER 1
	#macro J_INVINCIBLE 2
	#macro J_SPEEDSHOE 3
	#macro J_ACT_CLEAR 4
	#macro BGM_ARBOREAL_1 5
	#macro BGM_ARBOREAL_2 6
	#macro BGM_TEST_1 7
	#macro BGM_SCARY 8
	#macro BGM_JOLLY 9
	#macro BGM_MMZ_PRESENT 10
	#macro BGM_TITLE 11
	#macro BGM_EEZ 12
	#macro BGM_MMZ_PAST 13
	#macro BGM_MIDNIGHTMZ 14
	#macro BGM_SSZ_PRESENT 15
	#macro BGM_SSHZ_PRESENT 16
	
