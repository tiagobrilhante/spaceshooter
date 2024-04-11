/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// verifica se player existe e se não criei a seq
if(!instance_exists(obj_player) && !gameover_seq && !level_completo)
{
	gameover_seq = layer_sequence_create("Sequences", room_width/2, room_height/2, sq_gameover);
	audio_play_sound(sfx_lose, 1, false);
}


