/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 16E87095
/// @DnDArgument : "steps" "16"
alarm_set(0, 16);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 53C6D10D
/// @DnDArgument : "code" "LenX = 11;$(13_10)LenY = -17;"
LenX = 11;
LenY = -17;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 409F4D9F
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_lightning"
/// @DnDSaveInfo : "objectid" "720fab08-5771-4b49-9ab7-78bf5367ff9c"
instance_create_layer(x + 0, y + 0, "Instances", obj_lightning);