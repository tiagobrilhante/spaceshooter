/// @description Insert description here
// You can write your code in this editor

var _up, _down, _press ;
 
_up = keyboard_check_pressed(ord("W"));
_down = keyboard_check_pressed(ord("S"));
_press = keyboard_check_pressed(vk_enter);
	

// Checar se um gamepad está conectado
if (gamepad_is_connected(gamepad_index)) {
    _up |= (gamepad_button_check_pressed(gamepad_index, gp_padu) || gamepad_axis_value(gamepad_index, gp_axislv) < -0.5);
    _down |= (gamepad_button_check_pressed(gamepad_index, gp_padd) || gamepad_axis_value(gamepad_index, gp_axislv) > 0.5);
	_press |= (gamepad_button_check_pressed(gamepad_index, gp_start));
}

// inicia direto se apertar enter
if(_press)
{
	
	
	// tenho que melhorar isso
	if(global.posicao_atual == 1)
	{
		var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
		_transicao.destino = rm_level1;
	} else if(global.posicao_atual == 2)
	{
		var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
		_transicao.destino = rm_pontos;
	} 
	else if(global.posicao_atual == 3)
	{
		var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
		_transicao.destino = rm_sobre;
	}
}





if(_down)
{
	global.selecao_por_mouse = false;
	show_debug_message("cim: " + string(controla_index_menu));
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
		
		show_debug_message("global.posicao_atual")
		show_debug_message(global.posicao_atual)
		show_debug_message("global.posicao_atual")
	}
}


if(_up)
{
	global.selecao_por_mouse = false;
	show_debug_message("cim: " + string(controla_index_menu));
	if(controla_index_menu > 0)
	{
		
		
		// posicaoatal = 2
		// tenho 3 itens
		
		
		
		if (global.posicao_atual <= 1)
		{
			global.posicao_atual = 1;
		}
		else
		{
			global.posicao_atual--;
		}
		
		show_debug_message("global.posicao_atual")
		show_debug_message(global.posicao_atual)
		show_debug_message("global.posicao_atual")
	}
}