scr_p_collision_sensors_update();
return (collision_line(floor(center_x)-(dcos(angle)*sensor_hspace)+(dsin(angle)*15), floor(ypos)+((dsin(angle)*sensor_hspace)+(dcos(angle)*15)), floor(center_x)-(dcos(angle)*sensor_hspace)+(dsin(angle)*30), floor(ypos)+(dsin(angle)*sensor_hspace)+(dcos(angle)*30), obj_walls, true, true)
|| (collision_line(floor(center_x)-(dcos(angle)*sensor_hspace)+(dsin(angle)*15), floor(ypos)+((dsin(angle)*sensor_hspace)+(dcos(angle)*15)), floor(center_x)-(dcos(angle)*sensor_hspace)+(dsin(angle)*30), floor(ypos)+(dsin(angle)*sensor_hspace)+(dcos(angle)*30), par_monitors, true, true) && !scr_collision_monitor_check())
|| (collision_line(floor(center_x)-(dcos(angle)*sensor_hspace)+(dsin(angle)*15), floor(ypos)+((dsin(angle)*sensor_hspace)+(dcos(angle)*15)), floor(center_x)-(dcos(angle)*sensor_hspace)+(dsin(angle)*30), floor(ypos)+(dsin(angle)*sensor_hspace)+(dcos(angle)*30), par_springs, true, true) && !scr_collision_spring_check())
|| (collision_line(floor(center_x)-(dcos(angle)*sensor_hspace)+(dsin(angle)*15), floor(ypos)+((dsin(angle)*sensor_hspace)+(dcos(angle)*15)), floor(center_x)-(dcos(angle)*sensor_hspace)+(dsin(angle)*30), floor(ypos)+(dsin(angle)*sensor_hspace)+(dcos(angle)*30), obj_walls_1, true, true) && p_layer == 1)
|| (collision_line(floor(center_x)-(dcos(angle)*sensor_hspace)+(dsin(angle)*15), floor(ypos)+((dsin(angle)*sensor_hspace)+(dcos(angle)*15)), floor(center_x)-(dcos(angle)*sensor_hspace)+(dsin(angle)*30), floor(ypos)+(dsin(angle)*sensor_hspace)+(dcos(angle)*30), obj_walls_2, true, true) && p_layer == 2)
|| (collision_line(floor(center_x)-(dcos(angle)*sensor_hspace)+(dsin(angle)*15), floor(ypos)+((dsin(angle)*sensor_hspace)+(dcos(angle)*15)), floor(center_x)-(dcos(angle)*sensor_hspace)+(dsin(angle)*30), floor(ypos)+(dsin(angle)*sensor_hspace)+(dcos(angle)*30), obj_walls_platform, true, true) && platform_check))
&&
(collision_line(floor(center_x)+(dcos(angle)*sensor_hspace)+(dsin(angle)*15), floor(ypos)-((dsin(angle)*sensor_hspace)-(dcos(angle)*15)), floor(center_x)+(dcos(angle)*sensor_hspace)+(dsin(angle)*30), floor(ypos)-(dsin(angle)*sensor_hspace)+(dcos(angle)*30), obj_walls, true, true)
|| (collision_line(floor(center_x)+(dcos(angle)*sensor_hspace)+(dsin(angle)*15), floor(ypos)-((dsin(angle)*sensor_hspace)-(dcos(angle)*15)), floor(center_x)+(dcos(angle)*sensor_hspace)+(dsin(angle)*30), floor(ypos)-(dsin(angle)*sensor_hspace)+(dcos(angle)*30), par_monitors, true, true) && !scr_collision_monitor_check())
|| (collision_line(floor(center_x)+(dcos(angle)*sensor_hspace)+(dsin(angle)*15), floor(ypos)-((dsin(angle)*sensor_hspace)-(dcos(angle)*15)), floor(center_x)+(dcos(angle)*sensor_hspace)+(dsin(angle)*30), floor(ypos)-(dsin(angle)*sensor_hspace)+(dcos(angle)*30), par_springs, true, true) && !scr_collision_spring_check())
|| (collision_line(floor(center_x)+(dcos(angle)*sensor_hspace)+(dsin(angle)*15), floor(ypos)-((dsin(angle)*sensor_hspace)-(dcos(angle)*15)), floor(center_x)+(dcos(angle)*sensor_hspace)+(dsin(angle)*30), floor(ypos)-(dsin(angle)*sensor_hspace)+(dcos(angle)*30), obj_walls_1, true, true) && p_layer == 1)
|| (collision_line(floor(center_x)+(dcos(angle)*sensor_hspace)+(dsin(angle)*15), floor(ypos)-((dsin(angle)*sensor_hspace)-(dcos(angle)*15)), floor(center_x)+(dcos(angle)*sensor_hspace)+(dsin(angle)*30), floor(ypos)-(dsin(angle)*sensor_hspace)+(dcos(angle)*30), obj_walls_2, true, true) && p_layer == 2)
|| (collision_line(floor(center_x)+(dcos(angle)*sensor_hspace)+(dsin(angle)*15), floor(ypos)-((dsin(angle)*sensor_hspace)-(dcos(angle)*15)), floor(center_x)+(dcos(angle)*sensor_hspace)+(dsin(angle)*30), floor(ypos)-(dsin(angle)*sensor_hspace)+(dcos(angle)*30), obj_walls_platform, true, true) && platform_check));


