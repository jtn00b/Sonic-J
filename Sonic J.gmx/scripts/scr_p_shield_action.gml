if !ground && action == 1 && key_a && !sh_action && shield != "regular"{
    sh_action = true;
    switch shield{
        case "electric":
            audio_play_sound(snd_sh_electric_jump, 0, false);
            ysp = -5.5;
            var _ang = 45;
            for(i=0;i<4;i++){
                _shsparkle = instance_create(xpos, ypos, obj_sh_electric_sparkle);
                _shsparkle.vspeed = -dsin(_ang)*3;
                _shsparkle.hspeed = dcos(_ang)*3;
                _ang += 90;
            }
            break;
        case "fire":
            audio_play_sound(snd_sh_fire_dash, 0, false);
            obj_camera.hor_lag = 16;
            ysp = 0;
            xsp = 8*dir;
            sh_dir = dir;
            break;
        case "bubble":
            if (sh_spr_ind == spr_sh_bubble) || (sh_spr_ind == spr_sh_bubble_bounce_finish && sh_img_ind >= 4){
                audio_stop_sound(snd_sh_bubble_bounce);
                audio_play_sound(snd_sh_bubble_bounce, 0, false);
                xsp = 0;
                ysp = 8;
                sh_bubble_bounce = true;
                sh_spr_ind = spr_sh_bubble_bounce;
                sh_img_ind = 0;
                sh_ov_img_ind = 0;
            }break;
    }
}
if action != 1 sh_action = false;
if ysp <= 0 && shield == "bubble" sh_action = false;
if shield != "bubble" sh_bubble_bounce = false;
