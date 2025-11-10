

// VERSÃO ALTERNATIVA MAIS SIMPLES (descomente para usar)
largura_tele = 75;       // Largura do telemóvel (mm)
altura_tele = 150;       // Altura do telemóvel (mm)
espessura_tele = 10;     // Espessura máxima do telemóvel (mm)
angulo_inclinacao = 60;  // Ângulo de inclinação (graus)

difference() {
    color("Yellow")
    // Base principal com inclinação
    cube([largura_tele + 20, 40, 10]);
    color("Yellow")
    // Corte angular
    translate([-1, 25, -1])
    rotate([0, 0, -angulo_inclinacao])
    cube([largura_tele + 22, 30, 12]);
}
color("Yellow")
// Suporte traseiro
translate([0, 0, 10])
rotate([-angulo_inclinacao, 0, 0])
cube([largura_tele + 20, 3, 80]);
color("Yellow")
// Limite inferior
translate([5, 35, 0])
cube([largura_tele + 10, 5, 10]);
