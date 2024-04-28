/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

vspeed = 3;

// porcentagem de dropar item
// chance = 25; 
chance = 50; 
pontos = 10;

alarm[0] = random_range(1,3);

// impedir que inimigo nasca em cima do outro
if(place_meeting(x, y, obj_inimigo01)) instance_destroy(id, false);

atirando = function()
{
	if( y>= 0)
	{
		instance_create_layer(x-3, y + sprite_height/3, "Tiros", obj_tiro_inimigo01);
		
		audio_play_sound(sfx_laser1, 1, false);

	}
}

///@method dropa_item(chance)
dropa_item = function(_chance)
{
	var _valor = random(100);
	
	if(_valor < _chance && y >96)
	{
		instance_create_layer(x, y, "Tiros", obj_power_up);
	}
}