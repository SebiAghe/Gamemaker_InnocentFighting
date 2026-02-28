var bar_width = 100;
var bar_height = 10;

var hp_percent = hp / max_hp;

draw_set_color(c_red);
draw_rectangle(330,25, 330 + bar_width, 25 + bar_height, false);

draw_set_color(c_lime);
draw_rectangle(
    330,
    25,
    330 + (bar_width * hp_percent),
    25+ bar_height,
    false
);

draw_set_color(c_white);
draw_text(330, 5, "HP: " + string(hp) + " / " + string(max_hp));