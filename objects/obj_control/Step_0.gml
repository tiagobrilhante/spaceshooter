/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// verifica se player existe e se não criei a seq

contador += ceil((1/room_speed))/room_speed;

if(!instance_exists(obj_player) && !gameover_seq && !level_completo)
{
	gameover_seq = layer_sequence_create("Sequences", room_width/2, room_height/2, sq_gameover);
	audio_play_sound(sfx_lose, 1, false);
}


if (keyboard_check_pressed(vk_escape)) {
    global.paused = !global.paused;  // Alterna o estado de pausa
}

var _layer_id = layer_get_id("Background");
var _layer_id_extra = layer_get_id("Background_extra");
var _layer_id_extra2 = layer_get_id("Background_extra2");
var _layer_id_extra3 = layer_get_id("Background_extra3");




if (global.paused)
{

	// Define a velocidade vertical do layer para 0
	layer_vspeed(_layer_id, 0);
	layer_vspeed(_layer_id_extra, 0);
	layer_vspeed(_layer_id_extra2, 0);
	layer_vspeed(_layer_id_extra3, 0);
	layer_sequence_pause(global.sequence_instance_id);
	
 
}
else
{

	// retorna para a velocidade normal
	layer_vspeed(_layer_id, 0.4);
	layer_vspeed(_layer_id_extra, 0.8);
	layer_vspeed(_layer_id_extra2, 1);
	layer_vspeed(_layer_id_extra3, 2);
	layer_sequence_play(global.sequence_instance_id);

}
