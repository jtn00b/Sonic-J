//Check collision on platform
a = scr_collision_platform_check_bottom(obj_walls_platform);

if a{
    plat_col = true;
}

else if !a && ground
{
    plat_col = false;
}

//Platform
if a != noone{
    if ((ysp >= 0 && scr_collision_platform_check_bottom(obj_walls_platform) && !scr_platform_e() && !scr_platform_f() && !scr_platform_c() && !scr_platform_d()) || (ground && (scr_line_check(obj_walls_platform) && !scr_line_check(obj_walls_platform)))) && !platform_check{
        platform_check = true;
        /*Pull the character out of the ground
        while scr_collision_arg_bottom(obj_walls_platform){
            ypos -= 1;
            if !scr_collision_arg_a(obj_walls_platform) && !scr_collision_arg_b(obj_walls_platform){
                ypos += 2;
                break;
            }
        }*/
    }
}

/*if ground = true {
    if !scr_collision_platform_check_bottom(obj_walls_platform) && !plat_col
    {
        if platform_check
            platform_check = false;
    }
}*/


