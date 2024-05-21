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


function create_baloon(_tipo)
{
    
    if (obj_player.baloon)
    {
	
        draw_sprite_ext(spr_player_baloon, 0, obj_player.x + 40, obj_player.y - 50, 1, 1, 0, c_white, 1);
       
	   draw_set_color(c_white);
       
		
		
        if (_tipo == "hit")
        {
			
			if (obj_player.vida == 0) 
			{
				draw_set_font(fnt_gui);
				draw_text(obj_player.x + 73, obj_player.y - 125, "Vamos");
				draw_text(obj_player.x + 67, obj_player.y - 105, "Morrer ?!");
				draw_set_font(-1);
			}

			else
			{
				
				if (obj_player.escudos == 0 && obj_player.msg_escudo)
				{
					draw_set_font(fnt_gui);
					draw_text(obj_player.x + 61, obj_player.y - 125, "O escudo");
					draw_text(obj_player.x + 69, obj_player.y - 105, "já era !!!");
					draw_set_font(-1);
					obj_player.msg_escudo = false;
				}
				else
				{
					var _index_msg = choose(4,4);
				
				if (_index_msg == 1)
				{
					draw_set_font(fnt_baloon);
					draw_text(obj_player.x + 44, obj_player.y - 120, "Pilota direito");
					draw_text(obj_player.x + 80, obj_player.y - 100, "isso!");
					draw_set_font(-1);
				}
				else if (_index_msg == 2)
				{
					draw_set_font(fnt_baloon);
					draw_text(obj_player.x + 75, obj_player.y - 115, "Ai !!!!");
					draw_set_font(-1);
	
				}
				else if (_index_msg == 3)
				{
				
					draw_set_font(fnt_gui);
					draw_text(obj_player.x + 61, obj_player.y - 125, "Sabia que");
					draw_text(obj_player.x + 46, obj_player.y - 105, "existe escudo?");
					draw_set_font(-1);
	
				}
				else if (_index_msg == 4)
				{
					draw_set_font(fnt_baloon);
					draw_text(obj_player.x + 60, obj_player.y - 115, "Isso dói !");
					draw_set_font(-1);
	
				}
				}
				
				
			}
        }
        
        draw_set_font(-1);
		
    }
}


