///scr_collision_check_point(x,y)
return
(collision_point(argument0, argument1, obj_walls, true, true) ||
collision_point(argument0, argument1, par_springs, true, true) ||
(collision_point(argument0, argument1, par_monitors, true, true) && !scr_collision_monitor_check()) ||
(collision_point(argument0, argument1, obj_walls_1, true, true) && p_layer == 1) ||
(collision_point(argument0, argument1, obj_walls_2, true, true) && p_layer == 2) ||
(collision_point(argument0, argument1, obj_walls_platform, true, true) && platform_check));
