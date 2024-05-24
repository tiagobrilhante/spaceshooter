/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// verifica se player existe e se não criei a seq

if(global.seq_lvl_start) 
{
	layer_sequence_create("Level_Inicio", 960, 540, seq_lvl1);
	global.seq_lvl_start = false;
	
	
}

if(global.momentum == 0)
{
	
	var _gamepad_index = 0; // índice do gamepad (0 para o primeiro gamepad conectado)


	if (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(_gamepad_index, gp_start)) 
	{	
		destroi_seq_lvl();
	}
	
}


if (global.seq_lvl_start == false)
{
	
	
	if (global.paused) 
	{
		// Pausar a música principal e tocar a música de pausa
	    if (!audio_is_playing(snd_pause_music)) {
			
	        if(global.momentum == 1)
			{
				audio_pause_sound(snd_level_1);
			}
			else if (global.momentum == 2)
			{
				audio_pause_sound(snd_boss_1_fight);
			}
			
	        audio_play_sound(snd_pause_music, 1, true);
	    }
	} 
	else 
	{
	    // Retomar a música principal e parar a música de pausa
	    if (audio_is_playing(snd_pause_music)) 
		{
	        audio_stop_sound(snd_pause_music);
			
			if(global.momentum == 1)
			{
				audio_resume_sound(snd_level_1);
			}
			else if (global.momentum == 2)
			{
				audio_resume_sound(snd_boss_1_fight);
			}
	       
		}
	}
	
	
	if (global.contador_running && !global.paused)
	{
		global.contador += ceil((1/room_speed))/room_speed;
	}

	if(!instance_exists(obj_player) && player_exist == true && !gameover_seq && !level_completo)
	{
		gameover_seq = layer_sequence_create("Sequences", room_width/2, room_height/2, sq_gameover);
		audio_play_sound(sfx_lose, 1, false);
	}


// Verificar botão START do gamepad para alternar pausa
	var _gamepad_index = 0; // índice do gamepad (0 para o primeiro gamepad conectado)


	if (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(_gamepad_index, gp_start)) 
	{	
		if(global.momentum >= 1 && instance_exists(obj_player))
		{
		    global.paused = !global.paused;  // Alterna o estado de pausa
		}
	}

	var _layer_id = layer_get_id("Background");
	var _layer_id_extra = layer_get_id("Background_extra");
	var _layer_id_extra2 = layer_get_id("Background_extra2");
	var _layer_id_extra3 = layer_get_id("Background_extra3");

	if (global.paused || global.momentum == 0)
	{
		if (global.paused) 
		{
			// Define a velocidade vertical do layer para 0
			layer_vspeed(_layer_id, 0);
			layer_vspeed(_layer_id_extra, 0);
			layer_vspeed(_layer_id_extra2, 0);
			layer_vspeed(_layer_id_extra3, 0);
			layer_sequence_pause(global.sequence_instance_id);
		}
		else
		{
			layer_vspeed(_layer_id,lerp(0, 0.4, 0.2));
			layer_vspeed(_layer_id_extra, lerp(0, 0.8, 0.2));
			layer_vspeed(_layer_id_extra2, lerp(0, 1, 0.2));
			layer_vspeed(_layer_id_extra3, lerp(0, 2, 0.2));
			layer_sequence_pause(global.sequence_instance_id);
		}
	}
	else
	{
		if (!player_exist) {
			instance_create_layer(961, 810, "Player", obj_player);
			player_exist = true;
		}
		// retorna para a velocidade normal
		layer_vspeed(_layer_id, 0.4);
		layer_vspeed(_layer_id_extra, 0.8);
		layer_vspeed(_layer_id_extra2, 1);
		layer_vspeed(_layer_id_extra3, 2);
		layer_sequence_play(global.sequence_instance_id);
	}

}

var _qtd_exec_di = 0

if (global.contador >= 206 && global.contador < 210)
{
	_qtd_exec_di++
	destroi_inimigos();
}

if (gameover_seq) 
{
	destroi_inimigos();
	destroi_tiros();
	destroi_power_up();	
}