/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



if (global.seq_lvl_start == false)
{
	if(!instance_exists(obj_inimigo01))
	{
		var _repetir = 	10 + (10 * ceil(global.contador/12));
		
		show_debug_message(_repetir);
	
		// no lvl 10 cria o boss (seq entrada boss)
	
		//  217 212 a musica termina
		
		
		if(global.contador < 180 && global.momentum == 1)
		{
			
			repeat(_repetir)
			{
				cria_inimigo();
			}
		}
		else if (global.contador >= 212 && global.contador < 1000 && global.momentum == 1)
		{
		
			global.momentum = 2
			if(criar_boss)
			{ 
				global.contador_running = false;
				layer_sequence_create("Boss_entrada", 960, 512, seq_boss_1_entrada);
				criar_boss = false;     
			
				audio_stop_all();
			}
		}
	
	} 

}
alarm[0] = room_speed * 2;