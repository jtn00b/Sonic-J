//This will check if any edge of the top of the tile is full.
//If there is any slope at the middle of the tile and not any edge, the tile itself will be condered flat and will return true.
var x_pos = tile_x, y_pos = tile_y, done_1 = false, done_2 = false;
for(i=0; i<=16; i++){
    if (collision_point(x_pos, y_pos, obj_walls, true, true) ||
    (collision_point(x_pos, y_pos, obj_walls_1, true, true) && p_layer == 1) ||
    (collision_point(x_pos, y_pos, obj_walls_2, true, true) && p_layer == 2) ||
    (collision_point(x_pos, y_pos, obj_walls_platform, true, true))) && (i == 0 || i == 16){
        if i == 0 done_1 = true;
        if i == 16 done_2 = true;
    }
    switch mode{
        case 0:
        case 2:
            x_pos += 1;
            break;
        case 1:
        case 3:
            y_pos += 1;
            break;
    }
}
if !done_1 && !done_2 return false; else return true;
