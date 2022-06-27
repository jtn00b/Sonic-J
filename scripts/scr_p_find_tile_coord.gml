//This script is dependent on scr_p_find_heights to determine on which sensor should the tile be based on, so it must be executed before this script gets called.
scr_p_collision_sensors_update();
a_high = false; b_high = false;
switch mode{
    case 0:
        if ya<yb a_high = true;
        if yb<=ya b_high = true;
        break;
    case 1:
        if xa>xb a_high = true;
        if xb>=xa b_high = true;
        break;
    case 2:
        if ya>yb a_high = true;
        if yb>=ya b_high = true;
        break;
    case 3:
        if xa<xb a_high = true;
        if xb<=xa b_high = true;
        break;
}
if !ground {a_high = false; b_high = false};
if ground{
    if a_high && !b_high{
        switch mode{
            case 0:
                tile_x = 16*(floor(sensor_a_x/16));
                tile_y = 16*(floor(ypos/16));
                if !scr_tile_check() tile_y = 16*(floor(ypos/16))+16;
                if !scr_tile_check() tile_y = 16*(floor(ypos/16))+32;
                break;
            case 1:
                tile_x = 16*(floor(xpos/16));
                tile_y = 16*(floor(sensor_a_y/16));
                if !scr_tile_check() tile_x = 16*(floor(xpos/16))+16;
                if !scr_tile_check() tile_x = 16*(floor(xpos/16))+32;
                break;
            case 2:
                tile_x = 16*(floor(sensor_a_x/16));
                tile_y = 16*(floor(ypos/16));
                if !scr_tile_check() tile_y = 16*(floor(ypos/16))-16;
                if !scr_tile_check() tile_y = 16*(floor(ypos/16))-32;
                break;
            case 3:
                tile_x = 16*(floor(xpos/16));
                tile_y = 16*(floor(sensor_a_y/16));
                if !scr_tile_check() tile_x = 16*(floor(xpos/16))-16;
                if !scr_tile_check() tile_x = 16*(floor(xpos/16))-32;
                break;
        }
    }
    else if b_high{
        switch mode{
            case 0:
                tile_x = 16*(floor(sensor_b_x/16));
                tile_y = 16*(floor(ypos/16));
                if !scr_tile_check() tile_y = 16*(floor(ypos/16))+16;
                if !scr_tile_check() tile_y = 16*(floor(ypos/16))+32;
                break;
            case 1:
                tile_x = 16*(floor(xpos/16));
                tile_y = 16*(floor(sensor_b_y/16));
                if !scr_tile_check() tile_x = 16*(floor(xpos/16))+16;
                if !scr_tile_check() tile_x = 16*(floor(xpos/16))+32;
                break;
            case 2:
                tile_x = 16*(floor(sensor_b_x/16));
                tile_y = 16*(floor(ypos/16));
                if !scr_tile_check() tile_y = 16*(floor(ypos/16))-16;
                if !scr_tile_check() tile_y = 16*(floor(ypos/16))-32;
                break;
            case 3:
                tile_x = 16*(floor(xpos/16));
                tile_y = 16*(floor(sensor_b_y/16));
                if !scr_tile_check() tile_x = 16*(floor(xpos/16))-16;
                if !scr_tile_check() tile_x = 16*(floor(xpos/16))-32;
                break;
        }
    }
}
