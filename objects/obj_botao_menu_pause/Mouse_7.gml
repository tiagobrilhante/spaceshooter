/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(destino == "sair")
{
	global.emite_bip = false;
	var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
	game_end();
}
else if (destino == rm_inicio)
{
	var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
		_transicao.destino = destino;
}
else if (destino == "resume")
{
	global.paused = false;
	global.uma_vez_so = false
	with(obj_botao_menu_pause)
	{
		instance_destroy(id);
	}
	
	with(obj_menu_pause)
	{
		instance_destroy(id)
	}

}