/// @description Insert description here
// You can write your code in this editor
gamepad_index = 0;

controla_index_menu = instance_number(obj_botao);
global.posicao_atual = 0;
global.selecao_por_mouse = true;

global.btn_list = ds_list_create();

// Pega o índice da sala atual
current_room_index = room;

// Obtém o nome da sala usando o índice
current_room_name = room_get_name(current_room_index);

// Mostra o nome da sala em um diálogo ou qualquer outra lógica necessária
sala_atual = current_room_name;