/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 14FDACF7
/// @DnDArgument : "code" "alarm[1]=200;$(13_10)var i;$(13_10)for(i=0; i < 20 && flash_hp <= flash_hp_max; i+=1 ){$(13_10)	flash_hp += 1;$(13_10)}$(13_10)"
alarm[1]=200;
var i;
for(i=0; i < 20 && flash_hp <= flash_hp_max; i+=1 ){
	flash_hp += 1;
}