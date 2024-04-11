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
	
	// crio o boss 
	instance_create_layer(960, 256, "Boss", obj_boss);
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