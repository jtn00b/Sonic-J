///scr_ringloss_collisions(collision)
a = argument0;
/*a tips:

1 = horinzontal
2 = vertical*/

if a = 1
{
    b = place_meeting(x+hspeed+sign(hspeed), y, obj_walls) ||
        place_meeting(x+hspeed+sign(hspeed), y, obj_walls_1) ||
        place_meeting(x+hspeed+sign(hspeed), y, obj_walls_2) ||
        place_meeting(x+hspeed+sign(hspeed), y, obj_walls_platform) ||
        place_meeting(x+hspeed+sign(hspeed), y, obj_monitor) ||
        place_meeting(x+hspeed+sign(hspeed), y, par_springs);
}
else if a = 2
{
    b = place_meeting(x, y+vspeed+sign(vspeed), obj_walls) ||
        place_meeting(x, y+vspeed+sign(vspeed), obj_walls_1) ||
        place_meeting(x, y+vspeed+sign(vspeed), obj_walls_2) ||
        place_meeting(x, y+vspeed+sign(vspeed), obj_walls_platform) ||
        place_meeting(x, y+vspeed+sign(vspeed), obj_monitor) ||
        place_meeting(x, y+vspeed+sign(vspeed), par_springs);
}
return b;
