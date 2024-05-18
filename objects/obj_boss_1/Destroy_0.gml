/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//animacao de morte

layer_sequence_create("Boss_morte", x, room_height / 2 -32, seq_boss_1_death);

global.total_inimigos++

ganhando_pontos(200);