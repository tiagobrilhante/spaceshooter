/// @description Insert description here
// You can write your code in this editor

var _up, _down, _press, _back ;
 
_up = keyboard_check_pressed(ord("W"));
_down = keyboard_check_pressed(ord("S"));
_press = keyboard_check_pressed(vk_enter);
_back = keyboard_check_pressed(vk_enter);

	

// Checar se um gamepad está conectado
if (gamepad_is_connected(gamepad_index)) {
    // Verifica se o botão está pressionado ou se o eixo ultrapassou o limite
    var _current_axis_up = gamepad_axis_value(gamepad_index, gp_axislv) < -0.9;
    var _current_axis_down = gamepad_axis_value(gamepad_index, gp_axislv) > 0.9;

    // Atualiza _up apenas se o eixo acabou de passar o limite
    _up |= (gamepad_button_check_pressed(gamepad_index, gp_padu) || (_current_axis_up && !prev_axis_up));
    // Atualiza _down apenas se o eixo acabou de passar o limite
    _down |= (gamepad_button_check_pressed(gamepad_index, gp_padd) || (_current_axis_down && !prev_axis_down));

    // Atualizar estado do botão pressionado
    _press |= (gamepad_button_check_pressed(gamepad_index, gp_start) || gamepad_button_check_pressed(gamepad_index, gp_face1));

    // Atualizar os valores anteriores dos eixos para a próxima checagem
    prev_axis_up = _current_axis_up;
    prev_axis_down = _current_axis_down;
		
	
	_back |= (gamepad_button_check_pressed(gamepad_index, gp_face2));
	
}

// inicia direto se apertar enter
if(_press && sala_atual == "rm_inicio")
{

	// tenho que melhorar isso
	if(global.posicao_atual == 1)
	{
		var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
		_transicao.destino = rm_level1;
		
	} 
	else if(global.posicao_atual == 2)
	{
		var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
		_transicao.destino = rm_pontos;
	} 
	else if(global.posicao_atual == 3)
	{
		var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
		_transicao.destino = rm_sobre;
	}
	else if(global.posicao_atual == 4)
	{
		var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
		_transicao.destino = rm_como_jogar;
	}
	else if(global.posicao_atual == 5)
	{
		var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
		game_end();
	}
		
}

if(_back && sala_atual != "rm_inicio")
{	
	
	var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
	_transicao.destino = rm_inicio;
}


if(_down && sala_atual == "rm_inicio")
{
	global.selecao_por_mouse = false;
	if(controla_index_menu > 0)
	{
		
		if (global.posicao_atual >= controla_index_menu)
		{
			global.posicao_atual = controla_index_menu;
		} 
		else if (global.posicao_atual <= 0)
		{
			global.posicao_atual = 1;
		}
		else
		{
			global.posicao_atual++;
		}
		
	}
}


if(_up  && sala_atual == "rm_inicio")
{
	global.selecao_por_mouse = false;
	if(controla_index_menu > 0)
	{
		
		// posicaoatal = 2
		// tenho 4 itens
		
		if (global.posicao_atual <= 1)
		{
			global.posicao_atual = 1;
		}
		else
		{
			global.posicao_atual--;
		}
		
	}
}