/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

instance_create_layer(x, y, layer, obj_explosao);

// roda o método de pontos

if(instance_exists(obj_control)) obj_control.ganha_pontos(pontos);

// dopando o item
dropa_item(chance);

screenshake(10);