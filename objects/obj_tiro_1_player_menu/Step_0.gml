/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// diminui a escala do tiro

image_xscale = lerp(image_xscale, 1, 0.5);
image_yscale = lerp(image_yscale, 1, 0.5);

if(y <= 60) instance_destroy();