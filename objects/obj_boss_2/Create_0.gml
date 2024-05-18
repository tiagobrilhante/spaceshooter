/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/*
estado 1 - Parado dando o tiro 2
estado 2 - Movendo dando o tiro 1
estado 3 - Parado intercalando entre o tiro 1 e 2

(estado 4)
Estado especial 1 = Ficar invulneravel enquanto recupera vida (2 minions)Estado especial)
*/

// estado_atual = choose("estado 1", "estado 2", "estado 3");

// musica boss
audio_play_sound(snd_boss_fight, 0, true);

vida_max = 1500;
vida_atual = vida_max;

estado_atual = choose("estado 1", "estado 2", "estado 3");

delay_tiro = room_speed/2;
espera_tiro = 0;
delay_estado = room_speed*10;
espera_estado = delay_estado;
velocidade_horizontal = -3;

// criei minion
criar_minions = true;

tiro_02 = function()
{
		instance_create_layer(x, y+80, "Tiros", obj_tiro_inimigo02);
		audio_play_sound(sfx_laser1, 1, false);
}

/// @method tiro_01(true_direita_false_esquerda)
tiro_01 = function(_direita)
{
	
	if(_direita)
	{
		var _posx = 160;
	}
	else
	{
		var _posx = -160;
	}
	instance_create_layer(x + _posx, y + 10, "Tiros", obj_tiro_inimigo01);
	audio_play_sound(sfx_laser1, 1, false);
}


troca_estado = function()
{
	espera_estado--;

	if(espera_estado <=0)
	{
		if(vida_atual > vida_max/ 2)
		{
			estado_atual = choose("estado 1", "estado 2", "estado 3");
		}
		else
		{
			estado_atual = choose("estado 1", "estado 2", "estado 3", "estado 4");
		}
	
		// recuperar estado
		espera_estado = delay_estado;
	
		// pode criar minions
		criar_minions = true
	}	
}


// metodo estado 01
estado_01 = function()
{
	// diminuirndo o valor da espera
	espera_tiro--;   
	
	// se a espera do tiro for menor ou igual a 0
	if(espera_tiro <=0)
	{
	
		tiro_02();
		espera_tiro = delay_tiro;
	}
}

estado_02 = function()
{
	// kindo para a direita
	x+=velocidade_horizontal;
	
	// invertendo o deslocamento horizontal
	 if(x >= 1632 || x <= 288)
	 {
		 velocidade_horizontal *= -1;
	 }
	
	espera_tiro--;
	
	if (espera_tiro <= 0)
	{ 
		// tiro da esquerda
		tiro_01(false)
	
		// tiro da direita	
		tiro_01(true)
		
		espera_tiro = delay_tiro * 2;
	}
}

estado_03 = function()
{
	espera_tiro--;
	if(espera_tiro <= 0)
	{
		tiro_02()
		espera_tiro = delay_tiro * 2;
	}
	
	if(espera_tiro == delay_tiro)
	{
		tiro_01(false);	
	}
	
	if(espera_tiro == delay_tiro + (round(delay_tiro/2)))
	{
	
		tiro_01(true);
	}

estado_04 = function()
{
	sprite_index = spr_boss_1_idle_2;
	
	// indo para  meio da tela
	
	x += sign(room_width / 2 - x);
	
	//cria os minions se eu puder
	
	if (criar_minions)
	{
		var _minion = instance_create_layer(128,672, "Inimigos", obj_boss_minion);
		_minion.image_angle = 90;
	
		var _minion = instance_create_layer(1760,672, "Inimigos", obj_boss_minion);
		_minion.image_angle = 270;
		
		// paro de criar
		criar_minions = false;
	}
}



}