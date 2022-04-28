//x and y coordinates of both collision points
scr_p_collision_sensors_update();
switch mode{
    case 0:
        xa = floor(center_x)-sensor_hspace;
        ya = floor(center_y);
        xb = floor(center_x)+sensor_hspace;
        yb = floor(center_y);
        break;
    case 1:
        xa = floor(center_x);
        ya = floor(center_y)-sensor_hspace;
        xb = floor(center_x);
        yb = floor(center_y)+sensor_hspace;
        break;
    case 2:
        xa = floor(center_x)+sensor_hspace;
        ya = floor(center_y);
        xb = floor(center_x)-sensor_hspace;
        yb = floor(center_y);
        break;
    case 3:
        xa = floor(center_x);
        ya = floor(center_y)+sensor_hspace;
        xb = floor(center_x);
        yb = floor(center_y)-sensor_hspace;
        break;
}

check_a = false;
check_b = false;

if scr_tile_check() && !collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, obj_wall, true, true) &&
!(collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, obj_monitor, true, true) && !(spin && ground && scr_collision_box_main(par_monitors))) &&
!collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, par_springs, true, true) &&
!collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, obj_spikes, true, true) &&
!(collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, obj_wall_1, true, true) && p_layer == 1) &&
!(collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, obj_wall_2, true, true) && p_layer == 2) && 
!(collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, obj_wall_platform, true, true) && (platform_check)) check = 64;
else check = 32;

for(i=1; i<=check; i++;){
    if !check_a{
        switch mode{
            case 0:
                ya += 1;
                break;
            case 1:
                xa += 1;
                break;
            case 2:
                ya -= 1;
                break;
            case 3:
                xa -= 1;
                break;
        }
        if scr_collision_check_point(xa, ya) check_a = true;
    }
    if !check_b{
        switch mode{
            case 0:
                yb += 1;
                break;
            case 1:
                xb += 1;
                break;
            case 2:
                yb -= 1;
                break;
            case 3:
                xb -= 1;
                break;
        }
        if scr_collision_check_point(xb, yb) check_b = true;
    }
}
