/*switch mode{
    case 0:
    case 2:
        a = collision_line(sensor_d_x, center_y, sensor_d_x, sensor_d_y, argument0, true, true)
        break;
    case 1:
    case 3:
        a = collision_line(center_x, sensor_d_y, sensor_d_x, sensor_d_y, argument0, true, true)
}
return a;*/
return collision_point(sensor_d_x, sensor_d_y, argument0, true, true);
