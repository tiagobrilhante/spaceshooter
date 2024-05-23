/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// diminui a escala do tiro
if (global.paused)
{
    speed = 0;
}
else
{
    speed = 15;  // Definindo a velocidade do tiro
    motion_set(direction, speed);
}

	

image_xscale = lerp(image_xscale, 1, 0.5);
image_yscale = lerp(image_yscale, 1, 0.5);