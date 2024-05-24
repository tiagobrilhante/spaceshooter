/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/*
if(estado_atual != "estado 4")
{
	// usa a sprite dele mesmo
	sprite_index = spr_boss_1_attack_1;
}
*/

if (!global.paused)
{
	// alterna os estados
	troca_estado()

	// iniciandoi estado machine

	if (estado_atual == "estado 1")
	{

		sprite_index = spr_boss_1_attack_1;
		estado_01();

	}
	else if (estado_atual == "estado 2")
	{
		sprite_index = spr_boss_1_attack_2;
		estado_02();
	}
	else if (estado_atual == "estado 3")
	{
		sprite_index = spr_boss_1_attack_3;
		estado_03();
	}
	else if (estado_atual == "estado 4")
	{
		sprite_index = spr_boss_1_heal;
		estado_04();
	}
}