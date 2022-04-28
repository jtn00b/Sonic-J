goalpost = instance_position(xpos, ypos, obj_goal_post);
if !goalpost.goal{
    sign_dir = sign(gsp);
    if sign_dir == 0 sign_dir = 1;
    goalpost.goal = true;
    goalpost.spin = true;
    goalpost.index = id;
    goalpost.sprite_index = spr_goal_post_eggman;
    if sign_dir >= 0 goalpost.img_ind = 8; else goalpost.img_ind = 6;
    audio_play_sound(snd_goalpost_spin, 0, false);
    if instance_exists(obj_camera){
        obj_camera.target = goalpost;
        obj_camera.minimum_x = max(0, goalpost.x-(global.Window_X/2));
        obj_camera.maximum_x = min(room_width, goalpost.x+(global.Window_X/2));
        obj_camera.minimum_y = max(0, goalpost.y-(global.Window_Y/2));
        obj_camera.mode = -1;
    }
    if abs(gsp) <= 4{
        goalpost.img_spd = 0.6*sign_dir;
        goalpost.slowdown = 0.002*sign_dir;
    }
    else if abs(gsp) > 4 && abs(gsp) < 12{
        if sign_dir == 1{
            goalpost.img_spd = 2*sign_dir;
            goalpost.slowdown = 0.014*sign_dir;
        }else{
            goalpost.img_spd = 2*sign_dir;
            goalpost.slowdown = 0.0142*sign_dir;
        }
    }
    else{
        if sign_dir == 1{
            goalpost.img_spd = 3*sign_dir;
            goalpost.slowdown = 0.016*sign_dir;
        }else{
            goalpost.img_spd = 3*sign_dir;
            goalpost.slowdown = 0.0166*sign_dir;
        }
    }
}
