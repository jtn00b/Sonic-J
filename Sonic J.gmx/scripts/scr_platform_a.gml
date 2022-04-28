switch mode{
    case 0:
        return collision_point(sensor_a_x, sensor_a_y+2, argument0, true, true);
        break;
    case 1:
        return collision_point(sensor_a_x+2, sensor_a_y, argument0, true, true);
        break;
    case 2:
        return collision_point(sensor_a_x, sensor_a_y-2, argument0, true, true);
        break;
    case 3:
        return collision_point(sensor_a_x-2, sensor_a_y, argument0, true, true);
        break;
}
