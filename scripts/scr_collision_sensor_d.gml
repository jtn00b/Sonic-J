scr_p_collision_sensors_update();
switch mode{
    case 0:
    case 2:
        return collision_line(sensor_d_x, center_y, sensor_d_x, sensor_d_y, obj_walls, true, true) ||
        collision_line(sensor_d_x, center_y, sensor_d_x, sensor_d_y, par_springs, true, true) ||
        (collision_line(sensor_d_x, center_y, sensor_d_x, sensor_d_y, par_monitors, true, true) && !scr_collision_monitor_check()) ||
        (collision_line(sensor_d_x, center_y, sensor_d_x, sensor_d_y, obj_walls_1, true, true) && p_layer = 1) ||
        (collision_line(sensor_d_x, center_y, sensor_d_x, sensor_d_y, obj_walls_2, true, true) && p_layer = 2)
        break;
    case 1:
    case 3:
        return collision_line(center_x, sensor_d_y, sensor_d_x, sensor_d_y, obj_walls, true, true) ||
        collision_line(center_x, sensor_d_y, sensor_d_x, sensor_d_y, par_springs, true, true) ||
        (collision_line(center_x, sensor_d_y, sensor_d_x, sensor_d_y, par_monitors, true, true) && !scr_collision_monitor_check())  ||
        (collision_line(center_x, sensor_d_y, sensor_d_x, sensor_d_y, obj_walls_1, true, true) && p_layer = 1) ||
        (collision_line(center_x, sensor_d_y, sensor_d_x, sensor_d_y, obj_walls_2, true, true) && p_layer = 2)
        break;
}
