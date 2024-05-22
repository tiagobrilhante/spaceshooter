/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// diminui a escala do tiro

if (global.paused)
{
	vspeed = 0;
}
else
{
	vspeed = -15;
}
	

image_xscale = lerp(image_xscale, 1, 0.5);
image_yscale = lerp(image_yscale, 1, 0.5);