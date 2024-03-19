/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// velocidade - 0.5		- Limite = 10	// 45%
// espera_tiro - 10%	- Limite = 20	// 45%
// Level tiro - 1		- Limite = 5	// 10%

velocidade = 5;

espera_tiro = room_speed;

level_tiro = 1;

atirando = function()
{
	var _fire = keyboard_check(vk_space);
	
	var _y_tiro = y - sprite_height/3;
	var _x_tiro = 60;
	if(_fire && alarm[0] == -1)
	{
		alarm[0] = espera_tiro;
		
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

///@method level_up(chance)
level_up = function(_chance)
{
	if(_chance >= 90)
	{
		// aumenta o lvl do tiro
		if(level_tiro < 5)
		{
			level_tiro++;
		}
	}
	else if(_chance >= 45)
	{
		// aumenta o lvl do tiro
		if(espera_tiro > 20)
		{
			espera_tiro *= .9;
		}
	} 
	else 
	{
		if(velocidade < 10)
		{
			velocidade +=.5;
		}
	}
		
		
}