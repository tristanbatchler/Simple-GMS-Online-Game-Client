///drawPlayerPrompts()

var textSpacing = string_height("|");

var xx = argument0;
var yy = argument1;

draw_set_colour(C_AVAILABLE_PROMPT);
draw_text(xx, yy + 2 * textSpacing, "[1-4] Quickslots    [I] Inventory    [P] Spellbook");
draw_text(xx, yy + 3 * textSpacing, "[TAB] Cycle Hostile Targets");

draw_text(xx, yy + 5 * textSpacing, "[SPACE] Dodge    [A] Attack    [K] Block    [R] Parry    [F] Kick");
