/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

image_blend = selected;
reseta_cor_pmouse = true;
global.selecao_por_mouse = true;



// Atualizar todos os outros botões
for (var i = 0; i < ds_list_size(global.btn_list); i++) {
    var btn = ds_list_find_value(global.btn_list, i);
    if (btn != id) {
        btn.image_blend = c_white;
    }
}