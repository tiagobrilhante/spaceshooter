audio_stop_all(); 
audio_play_sound(snd_level_1, 0, true);


global.sequence_instance_id  = layer_sequence_create("Sequence_Planetas", room_width/2, room_height/2, sq_planeta_passando);
