spring = scr_collision_arg_any(par_springs);
if spring != noone return ((scr_collision_arg_bottom(obj_spring_v) && ypos <= spring.y && spring.image_yscale == 1 && (mode == 0 || mode == 2)) ||
                           (scr_collision_arg_top(obj_spring_v) && ypos >= spring.y && spring.image_yscale == -1 && (mode == 0 || mode == 2)) ||
                           (scr_collision_arg_e(obj_spring_v) && spring.image_yscale == -1 && (mode == 1 || mode == 3)) ||
                           (scr_collision_arg_f(obj_spring_v) && spring.image_yscale == 1 && (mode == 1 || mode == 3)) ||
                           (scr_collision_arg_f(obj_spring_h) && spring.image_xscale == -1) ||
                           (scr_collision_arg_e(obj_spring_h) && spring.image_xscale == 1));
