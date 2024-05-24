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


atirando = function()
{
	var _fire = true;

	var _y_tiro = y - sprite_height/3;
	var _x_tiro = 60;
	if(_fire && alarm[0] == -1)
	{
		alarm[0] = espera_tiro;
		
		// crio tiro
		if(level_tiro == 1)
		{
			var _tiro1 = instance_create_layer(x, _y_tiro, "Tiros", obj_tiro_1_player_menu);
			_tiro1.direction = 90;
	
				
		}
		else if(level_tiro == 2)
		{
			tiro2();
		}
		else if(level_tiro == 3)
		{
			var _tiro1 = instance_create_layer(x, _y_tiro, "Tiros", obj_tiro_1_player_menu);
			_tiro1.direction = 90;
			tiro2();
		}
		
		else if(level_tiro == 4)
		{
			tiro4();
		} 
		else
		{
			tiro2();
			tiro4();
		}
		
	}
}

// metodo para criar o tiro 2 

tiro2 = function()
{
	var _y_tiro = y - sprite_height/3;
	var _x_tiro = 60;
	
	var _tiro_1 = instance_create_layer(x - _x_tiro, _y_tiro + 10, "Tiros", obj_tiro_2_player_menu);
	_tiro_1.hspeed = -5;
	var _tiro_2 =instance_create_layer(x + _x_tiro, _y_tiro + 10, "Tiros", obj_tiro_2_player_menu);
	_tiro_2.hspeed = 5;
}


tiro4 = function()
{
	var _direcao = 75;
	var _y_tiro = y - sprite_height/3;
	var _x_tiro = 60;
	repeat(3)
	{
		var _meu_tiro = instance_create_layer(x, _y_tiro + 10, "Tiros", obj_tiro_1_player_menu);  
		_meu_tiro.direction = _direcao;
		// fazendo o tiro ir na direção correta
		_meu_tiro.image_angle = _meu_tiro.direction + 90;
				
		_direcao += 15;	
	}
}
