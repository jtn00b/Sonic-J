switch mode{
    case 0:
        if collision_rectangle(center_x-8, sensor_c_y+3, center_x+8, sensor_b_y-3, argument0, true, true) != noone return collision_rectangle(center_x-8, sensor_c_y+3, center_x+8, sensor_b_y-3, argument0, true, true);
        break;
    case 1:
        if collision_rectangle(sensor_c_x+3, center_y+8, sensor_b_x-3, center_y-8, argument0, true, true) != noone return collision_rectangle(sensor_c_x+3, center_y+8, sensor_b_x-3, center_y-8, argument0, true, true);
        break;
    case 2:
        if collision_rectangle(center_x-8, sensor_b_y+3, center_x+8, sensor_d_y-3, argument0, true, true) != noone return collision_rectangle(center_x-8, sensor_b_y+3, center_x+8, sensor_d_y-3, argument0, true, true);
        break;
    case 3:
        if collision_rectangle(sensor_a_x+3, center_y+8, sensor_d_x-3, center_y-8, argument0, true, true) != noone return collision_rectangle(sensor_a_x+3, center_y+8, sensor_d_x-3, center_y-8, argument0, true, true);
        break;
}
if collision_point(sensor_a_x, sensor_a_y, argument0, true, true) != noone return collision_point(sensor_a_x, sensor_a_y, argument0, true, true);
else if collision_point(sensor_b_x, sensor_b_y, argument0, true, true) != noone return collision_point(sensor_b_x, sensor_b_y, argument0, true, true);
else if collision_point(sensor_c_x, sensor_c_y, argument0, true, true) != noone return collision_point(sensor_c_x, sensor_c_y, argument0, true, true);
else if collision_point(sensor_d_x, sensor_d_y, argument0, true, true) != noone return collision_point(sensor_d_x, sensor_d_y, argument0, true, true);
else if collision_point(sensor_e_x, sensor_e_y, argument0, true, true) != noone return collision_point(sensor_e_x, sensor_e_y, argument0, true, true);
else if collision_point(sensor_f_x, sensor_f_y, argument0, true, true) != noone return collision_point(sensor_f_x, sensor_f_y, argument0, true, true);
return false;
