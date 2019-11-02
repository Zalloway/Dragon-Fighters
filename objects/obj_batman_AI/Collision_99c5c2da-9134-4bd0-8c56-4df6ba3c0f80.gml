/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43573069
/// @DnDArgument : "code" "if !place_meeting(x, y + 1, obj_floor)$(13_10)   {$(13_10)   move_contact_solid(270, 12);$(13_10)   }"
if !place_meeting(x, y + 1, obj_floor)
   {
   move_contact_solid(270, 12);
   }

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 50AB5C0D
/// @DnDArgument : "speed" "3"
speed = 3;