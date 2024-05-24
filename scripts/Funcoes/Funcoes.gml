// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function screenshake(_shake)
{
// cria o screensake
var _screen_shake = instance_create_layer(0, 0, "Escudo",obj_screenshake);
_screen_shake.shake = _shake;

}

// funcao para ganhar pontos

function ganhando_pontos(_pontos)
{
	if(instance_exists(obj_control))
	{
		obj_control.ganha_pontos(_pontos);
	}
}

// destruindo sequencia
function destroi_seq()
{
	
	//layer_sequence_destroy("Sequences");
	var _elementos = layer_get_all_elements("Boss_entrada");
	layer_sequence_destroy(_elementos[0]);
	
	if(global.momentum == 2) 
	{
	// crio o boss 
		instance_create_layer(960, 268, "Boss", obj_boss_1);
		
	}
}


// destruindo sequencia
function destroi_seq_lvl()
{
	
	var _elementos = layer_get_all_elements("Level_Inicio");
	layer_sequence_destroy(_elementos[0]);
	global.momentum = 1;
	audio_play_sound(snd_level_1, 0, false);
	
}


// seq player
function cria_seq()
{
	if (instance_exists(obj_player))
		layer_sequence_create("Sequences", obj_player.x, obj_player.y, sq_level_end);
		instance_destroy(obj_player, false); 
		
		// impedindo o game over
		if(instance_exists(obj_control))
		{
			obj_control.level_completo = true;
		}
		
	{
		
	}
}

function cria_transicao()
{
	var _transicao = instance_create_layer(0,0, "Player", obj_transicao);
	_transicao.destino = rm_inicio;


}

function elimina_seq()
{
	var _elementos = layer_get_all_elements("Sequence_Planetas");
	layer_sequence_destroy(_elementos[0]);
	
}

function inicia_musica_inicial()
{
	
	audio_stop_all(); 
	audio_play_sound(snd_abertura, 0, true);
}

function game_over_music ()
{
	if (!global.uma_vez_so)
	{
		show_debug_message("GAME OVER")
		audio_stop_all(); 
		audio_play_sound(sfx_player_explosion, 2, false);
		audio_play_sound(snd_game_over, 0, true);
		global.uma_vez_so = true
	}
}
