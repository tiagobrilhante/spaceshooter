/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// velocidade - 0.5		- Limite = 10	// 45%
// espera_tiro - 10%	- Limite = 20	// 45%
// Level tiro - 1		- Limite = 5	// 10%

// 5- 10
velocidade = 5;
vel_max = 10;

// room_speed
espera_tiro = room_speed;

// 15 - 10
base_delay_tiro = 15;

// facilita indicadores de GUI
nv_vel_tiro =1;
nv_vel_ship = 1;
// fim variável de referências
max_level_tiro = 5;
// base 1 - 5
level_tiro = 1;


max_vida = 4;
vida = max_vida;

max_escudos = 4
escudos = max_escudos;

meu_escudo = noone;

gamepad_index = 0;

// Bonus de powerUp (sem uso)
pontos_shot_pup = 100;
pontos_shield_pup = 50;
pontos_vida_pup = 200;
pontos_vel_tiro_pup = 30;
pontos_vel_nave_pup = 30;
// taxa de aceleraçao
tx_acelera_nave = .5;
tx_acelera_tiro = .9;

// baloon
contador_baloon = 0;
baloon = false;
baloon_tipo = "";
msg_escudo = true;


atirando = function()
{
	var _fire = keyboard_check(vk_space);
	
	if (gamepad_is_connected(gamepad_index)) {
		_fire |= (gamepad_button_check(gamepad_index, gp_face3));
	}
	
	
	var _y_tiro = y - sprite_height/3;
	var _x_tiro = 60;
	if(_fire && alarm[0] == -1)
	{
		alarm[0] = espera_tiro;
		
		// som do tiro
		audio_play_sound(sfx_player_tiro_2, 1 ,0);
		
		// crio tiro
		if(level_tiro == 1)
		{
			instance_create_layer(x, _y_tiro, "Tiros", obj_tiro_player);
		}
		else if(level_tiro == 2)
		{
			tiro2();
		}
		else if(level_tiro == 3)
		{
			instance_create_layer(x, _y_tiro, "Tiros", obj_tiro_player);
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
	
	var _tiro_1 = instance_create_layer(x - _x_tiro, _y_tiro + 10, "Tiros", obj_tiro2_player);
	_tiro_1.hspeed = -5;
	var _tiro_2 =instance_create_layer(x + _x_tiro, _y_tiro + 10, "Tiros", obj_tiro2_player);
	_tiro_2.hspeed = 5;
}

tiro4 = function()
{
	var _direcao = 75;
	var _y_tiro = y - sprite_height/3;
	var _x_tiro = 60;
	repeat(3)
	{
		var _meu_tiro = instance_create_layer(x, _y_tiro + 10, "Tiros", obj_tiro_player);  
		_meu_tiro.direction = _direcao;
		// fazendo o tiro ir na direção correta
		_meu_tiro.image_angle = _meu_tiro.direction + 90;
				
		_direcao += 15;	
	}
}

///@method level_up(tipo)
level_up = function(_tipo)
{
	
	if(_tipo == "shot")
	{
		// aumenta o lvl do tiro
		if(level_tiro < max_level_tiro)
		{
			level_tiro++;
		}
		else 
		{
			// se não, da pontos
			ganhando_pontos(pontos_shot_pup);
		}
	}
	else if(_tipo == "shield")
	{
		// aumenta o lvl do tiro
		if(escudos < max_escudos)
		{
			escudos++;
		}
		else
		{
			ganhando_pontos(pontos_shield_pup);
		}
	} 
	else if(_tipo == "vida")
	{
		// aumenta o lvl do tiro
		if(vida < max_vida)
		{
			vida++;
		}
		else
		{
			ganhando_pontos(pontos_vida_pup);
		}
	} 
	else if(_tipo == "vel_tiro")
	{
		// aumenta o lvl do tiro
		if(espera_tiro > base_delay_tiro)
		{
			espera_tiro *= tx_acelera_tiro;
			nv_vel_tiro++;
		}
		else
		{
			ganhando_pontos(pontos_vel_tiro_pup);
		}
	}
	else if(_tipo == "vel_nave")
	{
		if(velocidade < vel_max)
		{
			velocidade += tx_acelera_nave;
			nv_vel_ship++;
		}
		else
		{
			ganhando_pontos(pontos_vel_nave_pup);
		}
	}
}

///@method perde_vida();
perde_vida = function()
{
	// so perde vida se nõa tem ecudo
	
	if(!meu_escudo)
	{
		if(vida >0)
		{
		
			baloon_tipo = "hit"
			baloon = true;
			audio_play_sound(sfx_player_get_hit, 2, false);
			vida--;
			screenshake(5);
		}
		else
		{
			
			audio_play_sound(sfx_player_explosion, 2, false);
			instance_destroy();
		
			screenshake(20);
		}
	}
		
}


cria_escudo = function()
{
	var _shield = keyboard_check_pressed(ord("E"));
	
	
	if (gamepad_is_connected(gamepad_index)) {
		_shield |= (gamepad_button_check(gamepad_index, gp_face2));
	}
	
	
		/// criando escudo
	if(_shield && escudos > 0 && !meu_escudo)
	{
		var _escudo = instance_create_layer(x, y, "Escudo", obj_escudo);
	
		_escudo.alvo = id;
	
		meu_escudo = _escudo;
		if (escudos > 0)
		{
			msg_escudo = true;
		}
	
		escudos--;
	}
}

