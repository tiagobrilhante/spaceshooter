/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(!instance_exists(obj_inimigo01))
{
	var _repetir = 	10 * level;
	
	// no lvl 10 cria o boss (seq entrada boss)
	
	if(level < 10)
	{
		repeat(_repetir)
		{
			cria_inimigo();
		}
	}
	else
	{
		if(criar_boss)
		{
			layer_sequence_create("Boss_entrada", 960, 512, sq_boss_entrada);
			criar_boss = false;
			
			audio_stop_all();
		}
	}
	
}
alarm[0] = room_speed * 5;