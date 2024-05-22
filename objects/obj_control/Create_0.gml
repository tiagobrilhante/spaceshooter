/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// randomizando o jogo

randomize();


alarm[0] = room_speed;

pontos = 0;
level = 1;
player_exist = false;

global.contador = 0;
global.contador_running = true;
global.momentum = 0; 

//pause_music
pause_music = false;

// 0 - abertura
// 1 - minions fase 1
// 2 - bossbattle lvl 1
// 3 - minions fase 2
// 4 - bossbattle lvl 2
// 5 - minions fase 3
// 6 - bossbattle lvl 3

// proximo_level = 100;
// proximo_level = 1;

// variavel de controle gameover

gameover_seq = noone;
global.seq_lvl_start = true

criar_boss = true;

level_completo = false;



// metodo de pontos
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
{
	pontos += _pontos * level;
	
	/*
	Isso foi abandonado pq a intenção agora é scriptar cada Fase
	POR TEMPO+
	if(pontos > proximo_level) 
	{
		level++;
		proximo_level *= 2;
		
		// 1 = 0
		// 2 = 100
		// 3 = 200
		// 4 = 400
		// 5 = 800
		// 6 = 1600
		// 7 = 3200
		// 8 = 6400 
		// 9 = 12800
		// 10 = 25600
	}
	*/
	
}

// nova mecânica de fase
// por tempo


// lvl 1 = 217
// lvl 2 = 267
// lvl 3 = 178


// metodo gerar inimigos
///@method cria_inimigo()
cria_inimigo = function()
{
	var _xx = irandom_range(64, 1888);
	
	// aumemnta o limite com base no lvl do jogo
	var _yy = irandom_range(-96, -1504 - (level + ceil(global.contador/13))*800 );

	// cria o inimigo com base no lvl
	var _chance = random_range(0, level + ceil(global.contador/6));
	
	var _inimigo = obj_inimigo01;

	if (_chance > 6)
	{
		_inimigo = obj_inimigo02;
	}

	instance_create_layer(_xx, _yy, "Inimigos", _inimigo);
}

// metodo destruir inimigos
///@method destroi_inimigos()
destroi_inimigos = function ()
{
	with (obj_inimigo01) 
	{
	obj_inimigo01.autokill();
	}
	
}