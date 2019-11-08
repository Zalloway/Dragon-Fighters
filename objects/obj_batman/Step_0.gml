/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 64D5D4D4
/// @DnDArgument : "code" "key_left = -keyboard_check(ord("A"));$(13_10)key_right =  keyboard_check(ord("D"));$(13_10)key_jump = keyboard_check_pressed(vk_space);$(13_10)$(13_10)$(13_10)hsp = walkSpeed * (key_left + key_right);$(13_10)if ((walkSpeed * (key_left + key_right) != 0) && (place_meeting(x, y + 1, obj_floor))) running = 1;$(13_10)else running = 2;$(13_10)$(13_10)$(13_10)if (walkSpeed * (key_left + key_right) < 0) image_xscale=-1;$(13_10)$(13_10)if (walkSpeed * (key_left + key_right) > 0) image_xscale=+1;	$(13_10)$(13_10)$(13_10)$(13_10)//process gravity$(13_10)if(!place_meeting(x, y + 1, obj_floor)){$(13_10)	vsp += grav;$(13_10)}else{$(13_10)	if(key_jump){$(13_10)		vsp = -jumpSpeed;$(13_10)	}else{$(13_10)		vsp = 0;	$(13_10)	}$(13_10)}$(13_10)if(running == 1){$(13_10)	animation_image = scr_exhex_to_number(string_char_at(animation_string,animation_index));$(13_10)	animation_index++;$(13_10)	if (animation_index > animation_len) animation_index=1;$(13_10)		image_index = animation_image;$(13_10)}$(13_10)vspp=vsp;$(13_10)if(running == 2 && (vsp >= 0)){$(13_10)	image_index = 0;$(13_10)}$(13_10)else if(running == 2 && (vsp <= 0 )){$(13_10)	image_index = 4 ;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//collisions$(13_10)if(place_meeting(x + hsp, y, obj_floor)){$(13_10)		while(!place_meeting(x + sign(hsp), y, obj_floor)){$(13_10)			x += sign(hsp);	$(13_10)		}$(13_10)		hsp = 0;$(13_10)}$(13_10)$(13_10)x += hsp;$(13_10)$(13_10)if(place_meeting(x, y + vsp, obj_floor)){$(13_10)		while(!place_meeting(x , y + sign(vsp), obj_floor)){$(13_10)			y += sign(vsp);	$(13_10)		}$(13_10)		vsp = 0;$(13_10)}$(13_10)$(13_10)y += vsp;"
key_left = -keyboard_check(ord("A"));
key_right =  keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);


hsp = walkSpeed * (key_left + key_right);
if ((walkSpeed * (key_left + key_right) != 0) && (place_meeting(x, y + 1, obj_floor))) running = 1;
else running = 2;


if (walkSpeed * (key_left + key_right) < 0) image_xscale=-1;

if (walkSpeed * (key_left + key_right) > 0) image_xscale=+1;	



//process gravity
if(!place_meeting(x, y + 1, obj_floor)){
	vsp += grav;
}else{
	if(key_jump){
		vsp = -jumpSpeed;
	}else{
		vsp = 0;	
	}
}
if(running == 1){
	animation_image = scr_exhex_to_number(string_char_at(animation_string,animation_index));
	animation_index++;
	if (animation_index > animation_len) animation_index=1;
		image_index = animation_image;
}
vspp=vsp;
if(running == 2 && (vsp >= 0)){
	image_index = 0;
}
else if(running == 2 && (vsp <= 0 )){
	image_index = 4 ;
}





//collisions
if(place_meeting(x + hsp, y, obj_floor)){
		while(!place_meeting(x + sign(hsp), y, obj_floor)){
			x += sign(hsp);	
		}
		hsp = 0;
}

x += hsp;

if(place_meeting(x, y + vsp, obj_floor)){
		while(!place_meeting(x , y + sign(vsp), obj_floor)){
			y += sign(vsp);	
		}
		vsp = 0;
}

y += vsp;