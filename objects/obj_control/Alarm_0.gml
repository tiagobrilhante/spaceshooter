/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor




if(!instance_exists(obj_inimigo01))
{
	var _repetir = 	10 + ceil(global.contador/4);
	
	// no lvl 10 cria o boss (seq entrada boss)
	
	//  217
	if(global.contador < 217)
	{
		global.momentum = 1
		repeat(_repetir)
		{
			cria_inimigo();
		}
	}
	else if (global.contador >= 217 && global.contador < 267)
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
alarm[0] = room_speed * 5;