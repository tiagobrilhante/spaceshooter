/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (vida > 0)
{
	vida--;
	image_alpha -= 0.08;
	
	// aumenta escala em 10%
	
	aumento_escala *= 1.1;
}
else
{
	instance_destroy();
}

instance_destroy(other);