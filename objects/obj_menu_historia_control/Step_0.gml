/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var  _press, _back;
 

_press = keyboard_check_pressed(vk_enter);
_back = keyboard_check_pressed(vk_escape);

_press |= keyboard_check_pressed(vk_space);
_back |= keyboard_check_pressed(vk_backspace);


// Checar se um gamepad está conectado
if (gamepad_is_connected(gamepad_index)) {
 
    // Atualizar estado do botão pressionado
    _press |= (gamepad_button_check_pressed(gamepad_index, gp_start) || gamepad_button_check_pressed(gamepad_index, gp_face1));
	_back |= (gamepad_button_check_pressed(gamepad_index, gp_face2));
	
}


if((_press || _back) && sala_atual == "rm_historia_1")
{

	audio_play_sound(sfx_btn_menu_out, 0, false);
	// tenho que melhorar isso
	
	
	var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
	_transicao.destino = rm_historia_2;
		
}
else if((_press || _back) && sala_atual == "rm_historia_2")
{
	audio_play_sound(sfx_btn_menu_out, 0, false);
	var _transicao = instance_create_layer(0,0, "Transicoes", obj_transicao);
	_transicao.destino = rm_level1;
} 
		


