switch mode{
    case 0:
        return collision_point(sensor_b_x, sensor_b_y+2, argument0, true, true);
        break;
    case 1:
        return collision_point(sensor_b_x+2, sensor_b_y, argument0, true, true)
        break;
    case 2:
        return collision_point(sensor_b_x, sensor_b_y-2, argument0, true, true)
        break;
    case 3:
        return collision_point(sensor_b_x-2, sensor_b_y, argument0, true, true)
        break;
}
