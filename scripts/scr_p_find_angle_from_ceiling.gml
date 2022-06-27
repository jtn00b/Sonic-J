//x and y coordinates of both collision points
if scr_collision_arg_top(par_monitors) || scr_collision_arg_top(par_springs) || action = 8 return 0;
scr_find_tile_from_celling();

check_1 = false;
check_2 = false;

x1 = tile_x+15;
y1 = tile_y+15;

x2 = tile_x;
y2 = tile_y+15;

for(i=1; i<=32; i++;){
    if scr_collision_check_point(x1, y1) check_1 = true;
    if !check_1{
        if i <= 16 y1 -= 1; else if i > 16 x1 -= 1;
    }
    if scr_collision_check_point(x2, y2) check_2 = true;
    if !check_2{
        if i <= 16 y2 -= 1; else if i > 16 x2 += 1;
    }
    if check_1 && check_2{
    c_angle = round(point_direction(x1, y1, x2, y2));
    return c_angle;
        exit;
    } else if !(check_1 && check_2) && i == 32{
        c_angle = 0;
        return c_angle;
        exit;
    }
}
