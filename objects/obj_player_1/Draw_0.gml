/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31E8076D
/// @DnDArgument : "code" "draw_self();$(13_10)if !instance_exists(obj_batman) exit;$(13_10)$(13_10)draw_set_color (c_red);$(13_10)draw_rectangle(x+5,y+7,x+230*obj_batman.batman_hp/obj_batman.batman_max_hp,y+40,false);$(13_10)draw_set_color(c_white);"
draw_self();
if !instance_exists(obj_batman) exit;

draw_set_color (c_red);
draw_rectangle(x+5,y+7,x+230*obj_batman.batman_hp/obj_batman.batman_max_hp,y+40,false);
draw_set_color(c_white);