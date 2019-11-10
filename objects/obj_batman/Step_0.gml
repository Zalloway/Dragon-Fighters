/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 64D5D4D4
/// @DnDArgument : "code" "key_left = -keyboard_check(ord("A"));$(13_10)key_right =  keyboard_check(ord("D"));$(13_10)key_jump = keyboard_check_pressed(vk_space);$(13_10)$(13_10)$(13_10)if(alarm[1] > 0) {$(13_10)	alarm[1]--;$(13_10)	}$(13_10)if(alarm[1] <= 0) speedMultiplier = 1;$(13_10)$(13_10)$(13_10)if(alarm[0] > 0) {$(13_10)	speedMultiplier = 1.5;$(13_10)	alarm[0]--;$(13_10)	}$(13_10)if(alarm[0] <= 0) speedMultiplier = 1;$(13_10)$(13_10)$(13_10)hsp = speedMultiplier * walkSpeed * (key_left + key_right);$(13_10)if ((walkSpeed * (key_left + key_right) != 0) && (place_meeting(x, y + 1, obj_floor))) running = 1;$(13_10)else running = 2;$(13_10)$(13_10)$(13_10)if (walkSpeed * (key_left + key_right) < 0) image_xscale=-1;$(13_10)$(13_10)if (walkSpeed * (key_left + key_right) > 0) image_xscale=+1;	$(13_10)$(13_10)$(13_10)if (keyboard_check_pressed(ord("Z"))==1){$(13_10)	alarm[2] = 90;$(13_10)}$(13_10)//process gravity$(13_10)if(!place_meeting(x, y + 1, obj_floor)){$(13_10)	vsp += grav;$(13_10)}else{$(13_10)	if(key_jump){$(13_10)		vsp = -speedMultiplier * jumpSpeed;$(13_10)	}else{$(13_10)		vsp = 0;	$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)	$(13_10)if (alarm[2] > 0){$(13_10)		animation_image_1 = scr_exhex_to_number(string_char_at(animation_string_1,animation_index_1));$(13_10)		animation_index_1++;$(13_10)		if (animation_index_1 > animation_len_1) animation_index_1=1;$(13_10)			image_index = animation_image_1;$(13_10)		alarm[2]-=1;$(13_10)}$(13_10)else{$(13_10)$(13_10)if(running == 1){$(13_10)	animation_image = scr_exhex_to_number(string_char_at(animation_string,animation_index));$(13_10)	animation_index++;$(13_10)	if (animation_index > animation_len) animation_index=1;$(13_10)		image_index = animation_image;$(13_10)}$(13_10)vspp=vsp;$(13_10)if(running == 2 && (vsp >= 0)){$(13_10)	image_index = 0;$(13_10)}$(13_10)else if(running == 2 && (vsp <= 0 )){$(13_10)	image_index = 4 ;$(13_10)}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//collisions$(13_10)if(place_meeting(x + hsp, y, obj_floor)){$(13_10)		while(!place_meeting(x + sign(hsp), y, obj_floor)){$(13_10)			x += sign(hsp);	$(13_10)		}$(13_10)		hsp = 0;$(13_10)}$(13_10)$(13_10)x += hsp;$(13_10)$(13_10)if(place_meeting(x, y + vsp, obj_floor)){$(13_10)		while(!place_meeting(x , y + sign(vsp), obj_floor)){$(13_10)			y += sign(vsp);	$(13_10)		}$(13_10)		vsp = 0;$(13_10)}$(13_10)$(13_10)y += vsp;$(13_10)"
key_left = -keyboard_check(ord("A"));
key_right =  keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);


if(alarm[1] > 0) {
	alarm[1]--;
	}
if(alarm[1] <= 0) speedMultiplier = 1;


if(alarm[0] > 0) {
	speedMultiplier = 1.5;
	alarm[0]--;
	}
if(alarm[0] <= 0) speedMultiplier = 1;


hsp = speedMultiplier * walkSpeed * (key_left + key_right);
if ((walkSpeed * (key_left + key_right) != 0) && (place_meeting(x, y + 1, obj_floor))) running = 1;
else running = 2;


if (walkSpeed * (key_left + key_right) < 0) image_xscale=-1;

if (walkSpeed * (key_left + key_right) > 0) image_xscale=+1;	


if (keyboard_check_pressed(ord("Z"))==1){
	alarm[2] = 90;
}
//process gravity
if(!place_meeting(x, y + 1, obj_floor)){
	vsp += grav;
}else{
	if(key_jump){
		vsp = -speedMultiplier * jumpSpeed;
	}else{
		vsp = 0;	
	}
}


	
if (alarm[2] > 0){
		animation_image_1 = scr_exhex_to_number(string_char_at(animation_string_1,animation_index_1));
		animation_index_1++;
		if (animation_index_1 > animation_len_1) animation_index_1=1;
			image_index = animation_image_1;
		alarm[2]-=1;
}
else{

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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F184AE7
/// @DnDArgument : "var" "alarm[0]"
/// @DnDArgument : "op" "2"
if(alarm[0] > 0)
{
	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 5B60D167
	/// @DnDParent : 4F184AE7
	
	{
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 2FC0673D
		/// @DnDParent : 5B60D167
		/// @DnDArgument : "var" "_mx"
		/// @DnDArgument : "min" "obj_batman.x-50"
		/// @DnDArgument : "max" "obj_batman.x+50"
		_mx = (random_range(obj_batman.x-50, obj_batman.x+50));
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 151EBF8A
		/// @DnDParent : 5B60D167
		/// @DnDArgument : "var" "_my"
		/// @DnDArgument : "min" "obj_batman.y-130"
		/// @DnDArgument : "max" "obj_batman.y+80"
		_my = (random_range(obj_batman.y-130, obj_batman.y+80));
	
		/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
		/// @DnDVersion : 1
		/// @DnDHash : 5DE9C26C
		/// @DnDParent : 5B60D167
		/// @DnDArgument : "x" "_mx"
		/// @DnDArgument : "y" "_my"
		/// @DnDArgument : "system" "global.P_System"
		/// @DnDArgument : "type" "global.Particle1"
		/// @DnDArgument : "number" "5"
		part_particles_create(global.P_System, _mx, _my, global.Particle1, 5);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C881DCE
/// @DnDArgument : "var" "alarm[1]"
/// @DnDArgument : "op" "2"
if(alarm[1] > 0)
{
	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 6A247F82
	/// @DnDParent : 5C881DCE
	
	{
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 073AEB3F
		/// @DnDParent : 6A247F82
		/// @DnDArgument : "var" "_mx"
		/// @DnDArgument : "min" "obj_batman.x-50"
		/// @DnDArgument : "max" "obj_batman.x+50"
		_mx = (random_range(obj_batman.x-50, obj_batman.x+50));
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 0013F769
		/// @DnDParent : 6A247F82
		/// @DnDArgument : "var" "_my"
		/// @DnDArgument : "min" "obj_batman.y-130"
		/// @DnDArgument : "max" "obj_batman.y+80"
		_my = (random_range(obj_batman.y-130, obj_batman.y+80));
	
		/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
		/// @DnDVersion : 1
		/// @DnDHash : 04A1C7F8
		/// @DnDParent : 6A247F82
		/// @DnDArgument : "x" "_mx"
		/// @DnDArgument : "y" "_my"
		/// @DnDArgument : "system" "global.P_System"
		/// @DnDArgument : "type" "global.Particle2"
		/// @DnDArgument : "number" "5"
		part_particles_create(global.P_System, _mx, _my, global.Particle2, 5);
	}
}