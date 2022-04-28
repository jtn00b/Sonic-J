scr_p_collision_sensors_update();
switch mode{
    case 0:
    case 2:
	       return collision_line(sensor_a_x, center_y, sensor_a_x, sensor_a_y, obj_walls, true, true) ||
	       collision_line(sensor_a_x, center_y, sensor_a_x, sensor_a_y, par_springs, true, true) ||
	        (collision_line(sensor_a_x, center_y, sensor_a_x, sensor_a_y, par_monitors, true, true) && !scr_collision_monitor_check()) ||
	        (collision_line(sensor_a_x, center_y, sensor_a_x, sensor_a_y, obj_walls_1, true, true) && p_layer = 1) ||
	        (collision_line(sensor_a_x, center_y, sensor_a_x, sensor_a_y, obj_walls_2, true, true) && p_layer = 2) ||
	        (collision_line(sensor_a_x, center_y, sensor_a_x, sensor_a_y, obj_walls_platform, true, true) && (platform_check))
	        break;
    case 1:
    case 3:
        return collision_line(center_x, sensor_a_y, sensor_a_x, sensor_a_y, obj_walls, true, true) ||
	       collision_line(center_x, sensor_a_y, sensor_a_x, sensor_a_y, par_springs, true, true) ||
	        (collision_line(center_x, sensor_a_y, sensor_a_x, sensor_a_y, par_monitors, true, true) && !scr_collision_monitor_check()) ||
	        (collision_line(center_x, sensor_a_y, sensor_a_x, sensor_a_y, obj_walls_1, true, true) && p_layer = 1) ||
	        (collision_line(center_x, sensor_a_y, sensor_a_x, sensor_a_y, obj_walls_2, true, true) && p_layer = 2) ||
	        (collision_line(center_x, sensor_a_y, sensor_a_x, sensor_a_y, obj_walls_platform, true, true) && (platform_check))
	       break;
}
/*return collision_point(sensor_a_x, sensor_a_y, obj_walls, true, true) ||
	collision_point(sensor_a_x, sensor_a_y, par_springs, true, true) ||
	(collision_point(sensor_a_x, sensor_a_y, par_monitors, true, true) && !(spin && ((sign(ysp) = 1 && !ground) || ground))) ||
	(collision_point(sensor_a_x, sensor_a_y, obj_walls_1, true, true) && p_layer = 1) ||
	(collision_point(sensor_a_x, sensor_a_y, obj_walls_2, true, true) && p_layer = 2) ||
	(collision_point(sensor_a_x, sensor_a_y, obj_walls_platform, true, true) && (platform_check))
