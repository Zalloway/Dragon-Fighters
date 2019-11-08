/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D87ECB4
/// @DnDArgument : "code" "walkSpeed = 24;$(13_10)jumpSpeed = 60;$(13_10)hsp = 0;$(13_10)vsp = 0;$(13_10)grav = 1.4;$(13_10)MAX_FALL_SPEED = 15;$(13_10)speedMultiplier = 1;$(13_10)spawnAlarm = 0;$(13_10)animation_string ="000111222333";$(13_10)animation_len = string_length(animation_string -1);$(13_10)animation_index = 1;"
walkSpeed = 24;
jumpSpeed = 60;
hsp = 0;
vsp = 0;
grav = 1.4;
MAX_FALL_SPEED = 15;
speedMultiplier = 1;
spawnAlarm = 0;
animation_string ="000111222333";
animation_len = string_length(animation_string -1);
animation_index = 1;

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.1
/// @DnDHash : 42E742C6
/// @DnDArgument : "var" "global.P_System"
/// @DnDArgument : "persist" "1"
global.P_System = part_system_create_layer("Instances", 1);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 117BD404
/// @DnDArgument : "var" "global.Particle1"
global.Particle1 = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 426A3360
/// @DnDArgument : "type" "global.Particle1"
/// @DnDArgument : "shape" "pt_shape_spark"
part_type_shape(global.Particle1, pt_shape_spark);

/// @DnDAction : YoYo Games.Particles.Part_Type_Color
/// @DnDVersion : 1
/// @DnDHash : 0D1B4D63
/// @DnDArgument : "type" "global.Particle1"
/// @DnDArgument : "startcol" "$FF02FFFA"
/// @DnDArgument : "midcol" "$FF00FFFF"
/// @DnDArgument : "endcol" "$FF00FFFF"
part_type_colour3(global.Particle1, $FF02FFFA & $FFFFFF, $FF00FFFF & $FFFFFF, $FF00FFFF & $FFFFFF);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 70CDEFC1
/// @DnDArgument : "type" "global.Particle1"
/// @DnDArgument : "minsize" ".4"
/// @DnDArgument : "maxsize" ".4"
part_type_size(global.Particle1, .4, .4, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 495897AD
/// @DnDArgument : "typ" "global.Particle1"
/// @DnDArgument : "maxlife" "6"
part_type_life(global.Particle1, 0, 6);