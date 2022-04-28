var c_high = false, d_high = false, tile_c_x = 0, tile_c_y = 0, tile_d_x = 0, tile_d_y = 0, c_check = false, d_check = false;

tile_c_x = 16*(floor(sensor_c_x/16));
tile_c_y = 16*(floor(center_y/16));
if !scr_tile_check_arg(tile_c_x, tile_c_y, false) tile_c_y = 16*(floor(center_y/16))-16; else c_check = true;
if !scr_tile_check_arg(tile_c_x, tile_c_y, false) tile_c_y = 16*(floor(center_y/16))-32; else c_check = true;
if !scr_tile_check_arg(tile_c_x, tile_c_y, false) tile_c_y = 16*(floor(center_y/16))-48; else c_check = true;

tile_d_x = 16*(floor(sensor_d_x/16));
tile_d_y = 16*(floor(center_y/16));
if !scr_tile_check_arg(tile_d_x, tile_d_y, false) tile_d_y = 16*(floor(center_y/16))-16; else d_check = true;
if !scr_tile_check_arg(tile_d_x, tile_d_y, false) tile_d_y = 16*(floor(center_y/16))-32; else d_check = true;
if !scr_tile_check_arg(tile_d_x, tile_d_y, false) tile_d_y = 16*(floor(center_y/16))-48; else d_check = true;

if tile_c_y > tile_d_y && c_check && scr_collision_sensor_c() && ysp <= 0 c_high = true;
if tile_d_y >= tile_c_y && d_check && scr_collision_sensor_d() && ysp <= 0 d_high = true;

if d_high {tile_x = tile_d_x; tile_y = tile_d_y;}
else if c_high {tile_x = tile_c_x; tile_y = tile_c_y;}
