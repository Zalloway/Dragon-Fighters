/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3DC4ED99
/// @DnDArgument : "code" "//process gravity$(13_10)if(!place_meeting(x, y + 1, obj_floor)){$(13_10)	vsp += .09*grav;$(13_10)}else vsp = 0;$(13_10)$(13_10)if(place_meeting(x, y + vsp, obj_floor)){$(13_10)		while(!place_meeting(x , y + sign(vsp), obj_floor)){$(13_10)			y += sign(vsp);	$(13_10)		}$(13_10)		vsp = 0;$(13_10)}$(13_10)$(13_10)y += vsp;"
//process gravity
if(!place_meeting(x, y + 1, obj_floor)){
	vsp += .09*grav;
}else vsp = 0;

if(place_meeting(x, y + vsp, obj_floor)){
		while(!place_meeting(x , y + sign(vsp), obj_floor)){
			y += sign(vsp);	
		}
		vsp = 0;
}

y += vsp;