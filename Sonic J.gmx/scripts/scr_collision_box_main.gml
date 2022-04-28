///scr_collision_box_main(object)
scr_p_collision_sensors_update();
switch mode{
    case 0:
        return collision_rectangle(center_x-8, sensor_c_y+3, center_x+8, sensor_b_y-3, argument0, true, true)
        break;
    case 1:
        return collision_rectangle(sensor_c_x+3, center_y+8, sensor_b_x-3, center_y-8, argument0, true, true)
        break;
    case 2:
        return collision_rectangle(center_x-8, sensor_b_y+3, center_x+8, sensor_d_y-3, argument0, true, true)
        break;
    case 3:
        return collision_rectangle(sensor_a_x+3, center_y+8, sensor_d_x-3, center_y-8, argument0, true, true)
        break;
}
