/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

// criando a flag de controle para saber se pode se mover

chance = 30;

pontos = 20;
posso_me_mover_para_lado = true;


atirando = function()
{
	if( y>= 0)
	{
		instance_create_layer(x, y + sprite_height/3, "Tiros", obj_tiro_inimigo02);

	}
}