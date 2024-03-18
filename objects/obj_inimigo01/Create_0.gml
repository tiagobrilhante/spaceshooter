/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

vspeed = 3;

alarm[0] = random_range(1,3);

atirando = function()
{
	if( y>= 0)
	{
		instance_create_layer(x-3, y + sprite_height/3, "Tiros", obj_tiro_inimigo01);

	}
}