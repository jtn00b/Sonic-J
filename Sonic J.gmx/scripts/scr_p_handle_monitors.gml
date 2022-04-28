///scr_handle_monitors
if scr_collision_box_real(par_monitors){
    monitor = scr_collision_box_real(par_monitors);
    if monitor != noone{
        if monitor.icon != noone monitor.icon.player_id = id;
        if (spin && ((sign(ysp) = 1 && !ground) || ground)) && !scr_collision_check_top(par_monitors){
            if (spin && ((sign(ysp) = 1 && !ground) || ground)){
                if ysp > 4 && key_ah {ysp = ysp*-1;}
                else {ysp = -4;}
            }
            if audio_is_playing(snd_explosion) audio_stop_sound(snd_explosion);
                audio_play_sound(snd_explosion, 0, false);
            with(monitor){instance_destroy();}
        }
        //if scr_collision_arg_top(monitor) {monitor.bumped = true; monitor.ysp = -2;}
    } else exit;
}
