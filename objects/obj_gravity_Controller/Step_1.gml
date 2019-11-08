/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 79744753
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "obj" "obj_batman"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "2da1b773-0b70-4aa0-8343-32b3698f7fe7"
var l79744753_0 = collision_point(x + 0, y + 1, obj_batman, true, 1);
if(!(l79744753_0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Direction
	/// @DnDVersion : 1
	/// @DnDHash : 6384A601
	/// @DnDParent : 79744753
	/// @DnDArgument : "direction" "270"
	gravity_direction = 270;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 34F6BB71
	/// @DnDParent : 79744753
	/// @DnDArgument : "force" ".3"
	gravity = .3;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6C547DB1
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Direction
	/// @DnDVersion : 1
	/// @DnDHash : 191AAAAD
	/// @DnDParent : 6C547DB1
	/// @DnDArgument : "direction" "270"
	gravity_direction = 270;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 2D549CA9
	/// @DnDParent : 6C547DB1
	/// @DnDArgument : "force" "0"
	gravity = 0;
}