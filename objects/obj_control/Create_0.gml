/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// randomizando o jogo

randomize();


alarm[0] = room_speed;

pontos = 0;

level = 1;


contador = 0;

proximo_level = 100;
// proximo_level = 1;

// variavel de controle gameover

gameover_seq = noone;

criar_boss = true;

level_completo = false;

// metodo de pontos
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
{
	pontos += _pontos * level;
	
	if(pontos > proximo_level) 
	{
		level++;
		proximo_level *= 2;
		/*
		1 = 0
		2 = 100
		3 = 200
		4 = 400
		5 = 800
		6 = 1600
		7 = 3200
		8 = 6400 
		9 = 12800
		10 = 25600
		*/
		
		
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