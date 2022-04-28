draw_line(center_x-(dcos(angle)*sensor_hspace)+(dsin(angle)*15), ypos+((dsin(angle)*sensor_hspace)+(dcos(angle)*15)), center_x-(dcos(angle)*sensor_hspace)+(dsin(angle)*30), ypos+(dsin(angle)*sensor_hspace)+(dcos(angle)*30));
draw_line(center_x+(dcos(angle)*sensor_hspace)+(dsin(angle)*15), ypos-((dsin(angle)*sensor_hspace)-(dcos(angle)*15)), center_x+(dcos(angle)*sensor_hspace)+(dsin(angle)*30), ypos-(dsin(angle)*sensor_hspace)+(dcos(angle)*30));
switch mode{
    case 0:
    case 2:
        draw_line_color(sensor_a_x, center_y, sensor_a_x, sensor_a_y, c_lime, c_lime);
        draw_line_color(sensor_b_x, center_y, sensor_b_x, sensor_b_y, c_aqua, c_aqua);
        draw_line_color(sensor_c_x, center_y, sensor_c_x, sensor_c_y, c_blue, c_blue);
        draw_line_color(sensor_d_x, center_y, sensor_d_x, sensor_d_y, c_yellow, c_yellow);
        draw_line_color(center_x, sensor_e_y, sensor_e_x, sensor_e_y, c_fuchsia, c_fuchsia);
        draw_line_color(center_x, sensor_f_y, sensor_f_x, sensor_f_y, c_red, c_red);
        break;
    case 1:
    case 3:
        draw_line_color(center_x, sensor_a_y, sensor_a_x, sensor_a_y, c_lime, c_lime);
        draw_line_color(center_x, sensor_b_y, sensor_b_x, sensor_b_y, c_aqua, c_aqua);
        draw_line_color(center_x, sensor_c_y, sensor_c_x, sensor_c_y, c_blue, c_blue);
        draw_line_color(center_x, sensor_d_y, sensor_d_x, sensor_d_y, c_yellow, c_yellow);
        draw_line_color(sensor_e_x, center_y, sensor_e_x, sensor_e_y, c_fuchsia, c_fuchsia);
        draw_line_color(sensor_f_x, center_y, sensor_f_x, sensor_f_y, c_red, c_red);
        break;
}
draw_set_alpha(0.5);
/*switch mode{
    case 0:
        draw_rectangle_color(center_x-8, sensor_c_y+3, center_x+8, sensor_b_y-3, c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, false)
        break;
    case 1:
        draw_rectangle_color(sensor_c_x+3, center_y+8, sensor_b_x-3, center_y-8, c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, false)
        break;
    case 2:
        draw_rectangle_color(center_x-8, sensor_b_y+3, center_x+8, sensor_d_y-3, c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, false)
        break;
    case 3:
        draw_rectangle_color(sensor_a_x+3, center_y+8, sensor_d_x-3, center_y-8, c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, false)
        break;
}*/
draw_rectangle_color(tile_x, tile_y, tile_x+15, tile_y+15, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);
draw_point_color(x1, y1, c_red);
draw_point_color(x2, y2, c_red);
if shield == "electric" draw_circle_colour(xpos, ypos, 64, c_white, c_white, true);
