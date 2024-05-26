/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.efeitos)
{
	gpu_set_blendmode(bm_add)

	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale,image_angle, image_blend, image_alpha);

	gpu_set_blendmode(bm_normal)
}
else
{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale,image_angle, image_blend, image_alpha);
}
