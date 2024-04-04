/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


alarm[0] = room_speed;

pontos = 0;

level = 1;

proximo_level = 100;

// variavel de controle gameover

gameover_seq = noone;

// metodo de pontos
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
{
	pontos += _pontos;
	
	if(pontos > proximo_level) 
	{
		level++;
		proximo_level *= 2;
	}
	
}

// metodo gerar inimigos
///@method cria_inimigo()
cria_inimigo = function()
{
	var _xx = irandom_range(64, 1888);
	
	// aumemnta o li,ite com base no lvl do jogo
	var _yy = irandom_range(-96, -1504 - (level*800 ));

	// cria o inimigo com base no lvl
	var _chance = random_range(0, level);

	var _inimigo = obj_inimigo01;

	if (_chance > 2)
	{
		_inimigo = obj_inimigo02;
	}

	instance_create_layer(_xx, _yy, "Inimigos", _inimigo);
}