if argument2
return collision_rectangle(argument0, argument1, argument0+15, argument1+15, argument2, true, true)
else{
return collision_rectangle(argument0, argument1, argument0+15, argument1+15, obj_walls, true, true) ||
(collision_rectangle(argument0, argument1, argument0+15, argument1+15, par_monitors, true, true) && !scr_collision_monitor_check()) ||
collision_rectangle(argument0, argument1, argument0+15, argument1+15, par_springs, true, true) ||
(collision_rectangle(argument0, argument1, argument0+15, argument1+15, obj_walls_1, true, true) && p_layer = 1)  ||
(collision_rectangle(argument0, argument1, argument0+15, argument1+15, obj_walls_2, true, true) && p_layer = 2)  ||
(collision_rectangle(argument0, argument1, argument0+15, argument1+15, obj_walls_platform, true, true) && (platform_check))
}
