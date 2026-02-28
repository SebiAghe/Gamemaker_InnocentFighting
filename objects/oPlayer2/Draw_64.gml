// Margin from right/top edge
var margin = 20;
var bar_width = 100;
var bar_height = 10;

// Use GUI width/height
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Health percent
var hp_percent = hp / max_hp;

// Compute the left edge of the right bar
var right_x = gui_w - margin - bar_width;

// Draw background (red)
draw_set_color(c_red);
draw_rectangle(
    right_x, 
    margin, 
    right_x + bar_width, 
    margin + bar_height, 
    false
);

// Draw current HP (green)
draw_set_color(c_lime);
draw_rectangle(
    right_x, 
    margin, 
    right_x + (bar_width * hp_percent), 
    margin + bar_height, 
    false
);

// Draw text above bar
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(right_x + bar_width, margin - 15, "HP: " + string(hp) + " / " + string(max_hp));

// Reset alignment
draw_set_halign(fa_left);