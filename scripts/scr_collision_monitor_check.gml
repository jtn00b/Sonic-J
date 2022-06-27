scr_p_collision_sensors_update();
return (((scr_collision_arg_bottom(par_monitors) && !(ground && spin)) || scr_collision_arg_e(par_monitors) || scr_collision_arg_f(par_monitors) || scr_collision_box_real(par_monitors)) && (spin && ((sign(ysp) = 1 && !ground) || ground))) /*&& !(scr_collision_arg_bottom(par_monitors) && ground && spin);*/
