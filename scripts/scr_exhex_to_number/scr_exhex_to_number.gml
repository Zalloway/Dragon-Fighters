/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F61916F
/// @DnDArgument : "code" "/// @func scr_exhex_to_number(exhex_char)$(13_10)switch(argument [0])$(13_10){$(13_10)	case "0": return 0;$(13_10)	case "1": return 1;$(13_10)	case "2": return 2;$(13_10)	case "3": return 3;$(13_10)	case "4": return 4;$(13_10)	default: return -1;$(13_10)}"
/// @func scr_exhex_to_number(exhex_char)
switch(argument [0])
{
	case "0": return 0;
	case "1": return 1;
	case "2": return 2;
	case "3": return 3;
	case "4": return 4;
	default: return -1;
}