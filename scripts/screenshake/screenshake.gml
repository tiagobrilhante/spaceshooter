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
