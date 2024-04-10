/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// so perde se não estiver no estado 4

if(estado_atual != "estado 4")
{

	if (vida_atual > 0)
	{
		vida_atual--;	
	}
	else
	{
		instance_destroy();
	}
	instance_destroy(other);
}