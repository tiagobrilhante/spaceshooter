/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

image_xscale = lerp(image_xscale, 1, 0.3);
image_yscale = lerp(image_yscale, 1, 0.3);

if (global.paused)
{
	vspeed = 0;
}
else 
{
	vspeed = 6;
}