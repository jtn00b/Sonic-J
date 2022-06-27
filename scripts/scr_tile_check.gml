scr_p_find_platforms();
return collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, obj_walls, true, true) ||
(collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, par_monitors, true, true) && !scr_collision_monitor_check()) ||
collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, par_springs, true, true) ||
(collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, obj_walls_1, true, true) && p_layer = 1)  ||
(collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, obj_walls_2, true, true) && p_layer = 2)  ||
(collision_rectangle(tile_x, tile_y, tile_x+15, tile_y+15, obj_walls_platform, true, true) && (platform_check))
