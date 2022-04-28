spring = scr_collision_arg_any(par_springs);
if scr_collision_arg_any(par_springs)
{
    if scr_collision_spring_check()
    {
        if scr_collision_arg_any(obj_spring_v){
            ysp = spring.spring_force*(-spring.image_yscale);
            ground = false;
            if action == 8 flash_timer = 8;
            action = 7+(0.5*(spring.image_yscale = 1));
            sh_action = false;
        }
            if scr_collision_arg_any(obj_spring_h){
            if ground gsp = spring.spring_force*(spring.image_xscale); else xsp = spring.spring_force*(spring.image_xscale);
            dir = spring.image_xscale;
        }
        with spring {
            audio_play_sound(snd_spring, 0, false);
            image_index = 1;
            image_speed = 0.4;
        }
    }
}
