	//NOTE: Dublicate this room to make levels!
		with(obj_level)
	{
		//Set stage music and loop points
		stage_music = BGM_MMZ_PRESENT;
		
		//Set level name
		stage_name = "MINTY MOUTAIN";
		
		//Set stage act
		act = 2;
		
		//Is next level doing act transition
		act_transition = false;
		
		//Animal array
		animal = [A_FLICKY, A_CUCKY, A_RICKY];
		
		//Next level
		next_level = rm_stage_select;
	}