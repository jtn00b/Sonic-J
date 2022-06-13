goalpost = instance_position(xpos, ypos, obj_goal_post);
if !goalpost.goal{
    sign_dir = sign(gsp);
    if sign_dir == 0 sign_dir = 1;
    goalpost.goal = true;
    goalpost.spin = true;
    goalpost.index = id;
    if sign_dir == -1 goalpost.spin_angle = 360;
    audio_play_sound(snd_goalpost_spin, 0, false);
    if instance_exists(obj_camera){
        obj_camera.target = goalpost;
        obj_camera.minimum_x = max(0, goalpost.x-(global.Window_X/2));
        obj_camera.maximum_x = min(room_width, goalpost.x+(global.Window_X/2));
        obj_camera.minimum_y = max(0, goalpost.y-(global.Window_Y/2));
        obj_camera.mode = -1;
    }
    if abs(gsp) <= 4{
        goalpost.spin_spd = 10*sign_dir;
        goalpost.slowdown = 0.025*sign_dir;
    }
    else if abs(gsp) > 4 && abs(gsp) < 12{
        goalpost.spin_spd = 20*sign_dir;
        goalpost.slowdown = 0.07*sign_dir;
    }
    else{
        goalpost.spin_spd = 30*sign_dir;
        goalpost.slowdown = 0.14*sign_dir;
    }
}
