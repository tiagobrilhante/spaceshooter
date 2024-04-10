/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(estado_atual != "estado 4")
{
	// usa a sprite dele mesmo
	sprite_index = spr_boss_combate;
}

// alterna os estados
troca_estado()

// iniciandoi estado machine

if (estado_atual == "estado 1")
{
	estado_01();
}
else if (estado_atual == "estado 2")
{
	estado_02();
}
else if (estado_atual == "estado 3")
{
	estado_03();
}
else if (estado_atual == "estado 4")
{
	estado_04();
}