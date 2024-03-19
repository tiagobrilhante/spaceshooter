/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(!instance_exists(obj_inimigo01))
{
	var _repetir = 	10 * level;
	repeat(_repetir)
	{
		cria_inimigo();
	}
}
alarm[0] = room_speed * 5;