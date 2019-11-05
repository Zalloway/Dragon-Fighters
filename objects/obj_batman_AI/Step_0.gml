/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 40F7FF03
/// @DnDArgument : "code" "global.jump=true;$(13_10)$(13_10)if (Turn.x < x) image_xscale=-1;$(13_10)$(13_10)else image_xscale=+1;$(13_10)"
global.jump=true;

if (Turn.x < x) image_xscale=-1;

else image_xscale=+1;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3CE31FBD
/// @DnDArgument : "type" "1"
hspeed = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70483392
/// @DnDArgument : "code" "image_speed=.3;"
image_speed=.3;