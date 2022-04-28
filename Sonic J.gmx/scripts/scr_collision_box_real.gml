///scr_collision_box_real(object)
scr_p_collision_sensors_update();
switch mode{
    case 0:
        return collision_rectangle(sensor_e_x+1, sensor_c_y+1, sensor_f_x-1, sensor_b_y-1, argument0, true, true);
        break;
    case 1:
        return collision_rectangle(sensor_c_x-1, sensor_e_y-1, sensor_b_x+1, sensor_f_y+1, argument0, true, true);
        break;
    case 2:
        return collision_rectangle(sensor_f_x+1, sensor_b_y+1, sensor_e_x-1, sensor_d_y-1, argument0, true, true);
        break;
    case 3:
        return collision_rectangle(sensor_a_x-1, sensor_f_y-1, sensor_d_x+1, sensor_f_y+1, argument0, true, true);
        break;
}
