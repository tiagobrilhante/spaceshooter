/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// velocidade - 0.5		- Limite = 10	// 45%
// espera_tiro - 10%	- Limite = 20	// 45%
// Level tiro - 1		- Limite = 5	// 10%

velocidade = 5;
vel_max = 10;

espera_tiro = room_speed;
base_delay_tiro = 15;

// facilita indicadores de GUI
nv_vel_tiro =1;
nv_vel_ship = 1;
// fim variável de referências
max_level_tiro = 5;
level_tiro = 1;


max_vida = 4;
vida = max_vida;

max_escudos = 4
escudos = max_escudos;

meu_escudo = noone;

gamepad_index = 0;

contador = 0;

// Bonus de powerUp (sem uso)
pontos_shot_pup = 100;
pontos_shield_pup = 50;
pontos_vida_pup = 200;
pontos_vel_tiro_pup = 30;
pontos_vel_nave_pup = 30;
// taxa de aceleraçao
tx_acelera_nave = .5;
tx_acelera_tiro = .9;
ajuste_de_fluxo = 1



cria_escudo = function()
{
	var _shield = true;
	
		/// criando escudo
	if(_shield && escudos > 0 && !meu_escudo)
	{
		var _escudo = instance_create_layer(x, y, "Escudo", obj_escudo_player_menu);
	
		_escudo.alvo = id;
	
		meu_escudo = _escudo;
	
		escudos--;
	}
}