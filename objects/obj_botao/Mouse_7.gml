/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(destino == "sair")
{
	var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
	game_end();
}
else
{
	var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
	_transicao.destino = destino;
}