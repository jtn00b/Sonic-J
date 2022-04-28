//x and y coordinates of both collision points
scr_p_collision_sensors_update();
if scr_collision_arg_bottom(par_monitors) || scr_collision_arg_bottom(par_springs) return 90*mode;
switch mode{
    case 0:
        x1 = tile_x;
        y1 = tile_y;
        while scr_collision_check_point(x1, y1) && !scr_flat_tile_check(){
            x1 += 1;
            if !scr_collision_check_point(x1, y1){
                x1 -= 1;
                break;
            }
        }
        x2 = tile_x+15;
        y2 = tile_y;
        while scr_collision_check_point(x2, y2) && !scr_flat_tile_check(){
            x2 -= 1;
            if !scr_collision_check_point(x2, y2){
                x2 += 1;
                break;
            }
        }
        break;
    case 1:
        x1 = tile_x;
        y1 = tile_y+15;
        while scr_collision_check_point(x1, y1) && !scr_flat_tile_check(){
            y1 -= 1;
            if !scr_collision_check_point(x1, y1){
                y1 += 1;
                break;
            }
        }
        x2 = tile_x;
        y2 = tile_y;
        while scr_collision_check_point(x2, y2) && !scr_flat_tile_check(){
            y2 += 1;
            if !scr_collision_check_point(x2, y2){
                y2 -= 1;
                break;
            }
        }
        break;
    case 2:
        x1 = tile_x+15;
        y1 = tile_y+15;
        while scr_collision_check_point(x1, y1) && !scr_flat_tile_check(){
            x1 -= 1;
            if !scr_collision_check_point(x1, y1){
                x1 += 1;
                break;
            }
        }
        x2 = tile_x;
        y2 = tile_y+15;
        while scr_collision_check_point(x2, y2) && !scr_flat_tile_check(){
            x2 += 1;
            if !scr_collision_check_point(x2, y2){
                x2 -= 1;
                break;
            }
        }
        break;
    case 3:
        x1 = tile_x+15;
        y1 = tile_y;
        while scr_collision_check_point(x1, y1) && !scr_flat_tile_check(){
            y1 += 1;
            if !scr_collision_check_point(x1, y1){
                y1 -= 1;
                break;
            }
        }
        x2 = tile_x+15;
        y2 = tile_y+15;
        while scr_collision_check_point(x2, y2) && !scr_flat_tile_check(){
            y2 -= 1;
            if !scr_collision_check_point(x2, y2){
                y2 += 1;
                break;
            }
        }
        break;
}

check_1 = false;
check_2 = false;

for(i=1; i<=32; i++;){
    if scr_collision_check_point(x1, y1) check_1 = true;
    if !check_1{
        switch mode{
            case 0:
                if i <= 16 y1 += 1; else if i > 16 x1 += 1;
                break;
            case 1:
                if i <= 16 x1 += 1; else if i > 16 y1 -= 1;
                break;
            case 2:
                if i <= 16 y1 -= 1; else if i > 16 x1 -= 1;
                break;
            case 3:
                if i <= 16 x1 -= 1; else if i > 16 y1 += 1;
                break;
        }
    }
    if scr_collision_check_point(x2, y2) check_2 = true;
    if !check_2{
        switch mode{
            case 0:
                if i <= 16 y2 += 1; else if i > 16 x2 -= 1;
                break;
            case 1:
                if i <= 16 x2 += 1; else if i > 16 y2 += 1;
                break;
            case 2:
                if i <= 16 y2 -= 1; else if i > 16 x2 += 1;
                break;
            case 3:
                if i <= 16 x2 -= 1; else if i > 16 y2 -= 1;
                break;
        }
    }
    if check_1 && check_2{
    return round(point_direction(x1, y1, x2, y2));
        exit;
    } else if !(check_1 && check_2) && i == 32{
        return angle;
        exit;
    }
}
