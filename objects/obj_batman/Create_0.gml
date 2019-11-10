/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D87ECB4
/// @DnDArgument : "code" "walkSpeed = 24;$(13_10)jumpSpeed = 60;$(13_10)hsp = 0;$(13_10)vsp = 0;$(13_10)grav = 1.4;$(13_10)MAX_FALL_SPEED = 15;$(13_10)speedMultiplier = 1;$(13_10)spawnAlarm = 0;$(13_10)animation_string ="000111222333";$(13_10)animation_len = string_length(animation_string -1);$(13_10)animation_index = 1;$(13_10)animation_string_1 = "55555555666666667777777788888888999999999";$(13_10)animation_len_1 = string_length(animation_string_1 -1);$(13_10)animation_index_1 = 1;$(13_10)batman_hp = 100;$(13_10)batman_max_hp = 100;$(13_10)"
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
animation_string_1 = "55555555666666667777777788888888999999999";
animation_len_1 = string_length(animation_string_1 -1);
animation_index_1 = 1;
batman_hp = 100;
batman_max_hp = 100;

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.1
/// @DnDHash : 42E742C6
/// @DnDArgument : "var" "global.P_System"
/// @DnDArgument : "layer" ""particles""
/// @DnDArgument : "persist" "1"
global.P_System = part_system_create_layer("particles", 1);

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

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 35C73EC8
/// @DnDArgument : "var" "global.Particle2"
global.Particle2 = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 537727D4
/// @DnDArgument : "type" "global.Particle2"
/// @DnDArgument : "shape" "pt_shape_spark"
part_type_shape(global.Particle2, pt_shape_spark);

/// @DnDAction : YoYo Games.Particles.Part_Type_Color
/// @DnDVersion : 1
/// @DnDHash : 28A97856
/// @DnDArgument : "type" "global.Particle2"
/// @DnDArgument : "startcol" "$FF00FF00"
/// @DnDArgument : "midcol" "$FF00FF00"
/// @DnDArgument : "endcol" "$FF00FF00"
part_type_colour3(global.Particle2, $FF00FF00 & $FFFFFF, $FF00FF00 & $FFFFFF, $FF00FF00 & $FFFFFF);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 3525523E
/// @DnDArgument : "type" "global.Particle2"
/// @DnDArgument : "minsize" ".4"
/// @DnDArgument : "maxsize" ".8"
part_type_size(global.Particle2, .4, .8, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 0FC4107C
/// @DnDArgument : "typ" "global.Particle2"
/// @DnDArgument : "maxlife" "6"
part_type_life(global.Particle2, 0, 6);

/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
/// @DnDVersion : 1
/// @DnDHash : 02B22596
/// @DnDArgument : "type" "global.Particle2"
/// @DnDArgument : "maxdir" "100"
/// @DnDArgument : "incr" "100"
part_type_direction(global.Particle2, 0, 100, 100, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 48136DF0
/// @DnDArgument : "type" "global.Particle2"
/// @DnDArgument : "minspeed" "20"
/// @DnDArgument : "maxspeed" "20"
part_type_speed(global.Particle2, 20, 20, 0, 0);