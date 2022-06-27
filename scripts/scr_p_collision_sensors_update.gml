//--- Sensor Constants ---//
mode = scr_p_mode_get();
//deg_mode = round(angle/45) % 8;
switch mode{
    case 0:
        center_x = floor(xpos);
        if !spin center_y = ypos+16-19; else center_y = ypos+16-14;
        break;
    case 1:
        if !spin center_x = xpos+16-19; else center_x = xpos+16-14;
        center_y = floor(ypos);
        break;
    case 2:
        center_x = floor(xpos);
        if !spin center_y = ypos-16+19; else center_y = ypos-16+14;
        break;
    case 3:
        if !spin center_x = xpos-16+19; else center_x = xpos-16+14;
        center_y = floor(ypos);
        break;
}
if !spin{
    sensor_hspace = 9;
    switch mode{
        case 0:
            sensor_a_y = center_y+19;
            sensor_b_y = center_y+19;
            sensor_c_y = center_y-19;
            sensor_d_y = center_y-19;
            if angle == 0 && ground{
                sensor_e_y = center_y+8;
                sensor_f_y = center_y+8;
            }
            else{
                sensor_e_y = center_y;
                sensor_f_y = center_y;
            }
            sensor_a_x = center_x-9;
            sensor_b_x = center_x+9;
            sensor_c_x = center_x-9;
            sensor_d_x = center_x+9;
            sensor_e_x = center_x-11;
            sensor_f_x = center_x+11;
            break;
        case 1:
            sensor_a_y = center_y+9;
            sensor_b_y = center_y-9;
            sensor_c_y = center_y+9;
            sensor_d_y = center_y-9;
            sensor_e_y = center_y+11;
            sensor_f_y = center_y-11;
            sensor_a_x = center_x+19;
            sensor_b_x = center_x+19;
            sensor_c_x = center_x-19;
            sensor_d_x = center_x-19;
            sensor_e_x = center_x;
            sensor_f_x = center_x;
            break;
        case 2:
            sensor_a_y = center_y-19;
            sensor_b_y = center_y-19;
            sensor_c_y = center_y+19;
            sensor_d_y = center_y+19;
            sensor_e_y = center_y;
            sensor_f_y = center_y;
            sensor_a_x = center_x+9;
            sensor_b_x = center_x-9;
            sensor_c_x = center_x+9;
            sensor_d_x = center_x-9;
            sensor_e_x = center_x+11;
            sensor_f_x = center_x-11;
            break;
        case 3:
            sensor_a_y = center_y-9;
            sensor_b_y = center_y+9;
            sensor_c_y = center_y-9;
            sensor_d_y = center_y+9;
            sensor_e_y = center_y-11;
            sensor_f_y = center_y+11;
            sensor_a_x = center_x-19;
            sensor_b_x = center_x-19;
            sensor_c_x = center_x+19;
            sensor_d_x = center_x+19;
            sensor_e_x = center_x;
            sensor_f_x = center_x;
            break;
    }
}
else{
    sensor_hspace = 7;
    switch mode{
        case 0:
            sensor_a_y = center_y+14;
            sensor_b_y = center_y+14;
            sensor_c_y = center_y-15;
            sensor_d_y = center_y-15;
            if angle == 0 && ground{
                sensor_e_y = center_y+8;
                sensor_f_y = center_y+8;
            }
            else{
                sensor_e_y = center_y;
                sensor_f_y = center_y;
            }
            sensor_a_x = center_x-7;
            sensor_b_x = center_x+7;
            sensor_c_x = center_x-7;
            sensor_d_x = center_x+7;
            sensor_e_x = center_x-11;
            sensor_f_x = center_x+11;
            break;
        case 1:
            sensor_a_y = center_y+7;
            sensor_b_y = center_y-7;
            sensor_c_y = center_y+7;
            sensor_d_y = center_y-7;
            sensor_e_y = center_y+11;
            sensor_f_y = center_y-11;
            sensor_a_x = center_x+14;
            sensor_b_x = center_x+14;
            sensor_c_x = center_x-15;
            sensor_d_x = center_x-15;
            sensor_e_x = center_x;
            sensor_f_x = center_x;
            break;
        case 2:
            sensor_a_y = center_y-14;
            sensor_b_y = center_y-14;
            sensor_c_y = center_y+15;
            sensor_d_y = center_y+15;
            sensor_e_y = center_y;
            sensor_f_y = center_y;
            sensor_a_x = center_x+7;
            sensor_b_x = center_x-7;
            sensor_c_x = center_x+7;
            sensor_d_x = center_x-7;
            sensor_e_x = center_x+11;
            sensor_f_x = center_x-11;
            break;
        case 3:
            sensor_a_y = center_y-7;
            sensor_b_y = center_y+7;
            sensor_c_y = center_y-7;
            sensor_d_y = center_y+7;
            sensor_e_y = center_y-11;
            sensor_f_y = center_y+11;
            sensor_a_x = center_x-14;
            sensor_b_x = center_x-14;
            sensor_c_x = center_x+15;
            sensor_d_x = center_x+15;
            sensor_e_x = center_x;
            sensor_f_x = center_x;
            break;
    }
}
