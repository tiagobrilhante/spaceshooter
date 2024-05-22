/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(destino == "sair")
{
	var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
	game_end();
}
else
{
	audio_play_sound(sfx_btn_menu_out, 0, false);
	var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
	_transicao.destino = destino;
}