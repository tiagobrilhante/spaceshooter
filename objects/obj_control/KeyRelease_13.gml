/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(gameover_seq)
{
	var _transicao = instance_create_layer(0,0, "Player", obj_transicao);
	_transicao.destino = rm_inicio;
	
	if (pontos > global.max_pontos)
	{
		global.max_pontos = pontos;
	}
}
 