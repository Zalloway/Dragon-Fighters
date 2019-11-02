/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 55BE83AC
/// @DnDArgument : "speed" "random_range(5,10)"
/// @DnDArgument : "type" "1"
hspeed = random_range(5,10);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2DC8DF76
/// @DnDArgument : "code" "alarm[choose(0,1,) ] = random_range(10,15);"
alarm[choose(0,1,) ] = random_range(10,15);