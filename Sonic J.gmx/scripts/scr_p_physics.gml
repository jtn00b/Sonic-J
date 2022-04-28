//Previous x and y will be set BEFORE xpos and ypos update so they will act as the character's previous x and y coordinates.
landed = false;
//Update x and y speed when the player is on the ground.
if ground
{
    xsp = gsp*dcos(angle);
    ysp = gsp*-dsin(angle);
}

//We'll use a loop to make sure the character stays on the ground at very high speeds.
//Define some variables we'll need for the loop.
xxsp = 0;
yysp = 0;
axsp = 0;
aysp = 0;

//Start the loop.
while(abs(axsp) != abs(xsp) || abs(aysp) != abs(ysp)){

//Re-define xxsp and yysp.
prevtilex = tile_x;
prevtiley = tile_y;
if xsp != 0 xxsp = (min(abs(xsp)-abs(axsp), 10))*sign(xsp); else {xxsp = 0; axsp = 0;}
if ysp != 0 yysp = (min(abs(ysp)-abs(aysp), 10))*sign(ysp); else {yysp = 0; aysp = 0;}
//NOTE: The the maximum value that both xxsp and yysp can go is currently 10, as seen above. If it reaches that limit while xsp and/or ysp's value(s) are higher, it will loop and add itself to axsp and/or aysp.
//Lowering it will give more efficient results but will need more performance, while increasing it will give less efficient results but faster framerate.

//And now update the x and y depending on xxsp and yysp.
xpos+= xxsp;
ypos+= yysp;

//Finally, apply all collision/angle checking/stick to ground code.

if action != 9{
//--- Check collision (sorry, couldn't figure out a better way to do this.) ---//
//Horizontal collision
while (xsp <= 0 && scr_collision_sensor_e()){
    xpos = floor(xpos);
    //Pull the character out of the wall based on the floor mode
    if mode == 0 xpos += 1;
    else if mode == 1 {ypos -= 1;}
    else if mode == 2 {xpos -= 1;}
    else if mode == 3 {ypos += 1;}
    if !scr_collision_sensor_e(){
        if mode == 0 xpos -= 1;
        else if mode == 1 ypos += 1;
        else if mode == 2 xpos += 1;
        else if mode == 3 ypos -= 1;
        if !ground {if xsp <= 0 xsp = 0;} else {if gsp <= 0 gsp = 0; if mode != 0 {angle = 0; ground = false;}}
        break;
    }
}
while (xsp >= 0 && scr_collision_sensor_f()){
    xpos = floor(xpos);
    //Pull the character out of the wall based on the floor mode
    if mode == 0 xpos -= 1;
    else if mode == 1 {ypos += 1;}
    else if mode == 2 {xpos += 1;}
    else if mode == 3 {ypos -= 1;}
    if !scr_collision_sensor_f(){
        if mode == 0 xpos += 1;
        else if mode == 1 ypos -= 1;
        else if mode == 2 xpos -= 1;
        else if mode == 3 ypos += 1;
        if !ground {if xsp >= 0 xsp = 0;} else {if gsp >= 0 gsp = 0; if mode != 0 {angle = 0; ground = false;}}
        break;
    }
}
//Bottom collision
scr_p_find_platforms(); //Check platform if necessary
while (floor(ysp >=0) && (scr_collision_check_bottom())) && !ground{
    ypos = floor(ypos);
    //Pull the character out of the ground
    while scr_collision_check_bottom(){
        ypos -= 1;
        if !scr_collision_sensor_a() && !scr_collision_sensor_b() && !scr_collision_arg_bottom(obj_walls_platform){
            ypos += 1;
            break;
        }
    }
    landed = true;
    if landed = true{
        if !(scr_collision_spring_check() && scr_collision_arg_any(obj_spring_v)) ground = true;
    }
    
    //--- Landing ---//
    //Find Angle
    if ground{
        scr_p_find_heights();
        scr_p_find_tile_coord();
        angle = scr_p_find_angle_from_tile();
    }
    
    //Set gsp according to the angle
    gsp = 0;
    if (angle >= 0 && angle <=23) || (angle >= 339 && angle <=360) gsp = xsp;
    else if (angle >= 24 && angle <=45) || (angle >= 316 && angle <=338){
        if abs(xsp) > ysp gsp = xsp; else gsp = ysp*0.5*-sign(dsin(angle));
    }
    else{
        if abs(xsp) > ysp gsp = xsp; else gsp = ysp*(-sign(dsin(angle)));
    }
    ysp = 0;
    
    //Set action depending on circumstance (shield, dropdash, tunnel, etc.)
    if !tunnel && !(scr_collision_spring_check() && scr_collision_arg_any(obj_spring_v)) && !drop{
        if action == 8{
            gsp = 0;
            flash_timer = 8;
        }
        if !(shield == "bubble" && sh_action == true){
            sh_action = false;
            spin = false;
            action = 0;
            sh_bubble_bounce = false;
        }
        //Bubble shield bouncing
        else if (shield == "bubble" && sh_action == true) && !scr_collision_spikes_check(){
            audio_stop_sound(snd_sh_bubble_bounce);
            audio_play_sound(snd_sh_bubble_bounce, 0, false);
            sh_spr_ind = spr_sh_bubble_bounce_finish;
            sh_img_ind = 0;
            ground = false;
            ysp = -7.5*dcos(angle);
            xsp = (7.5*-dsin(angle))+(xsp*dcos(angle));
            sh_action = false;
            exit;
        }
    //Tunnel
    }else if tunnel && !drop{
        action = 5;
        sh_action = false;
        sh_bubble_bounce = false;
        audio_play_sound(snd_player_spin, 1, false);
    }
    //Drop dash
    else if drop{
        //room_goto(rm_boom); //LMFAO
        drop = false;
        drpcharge = 0;
        if ground{
            action = 5;
            obj_camera.hor_lag = 16;
            audio_play_sound(snd_player_release, 0, false);
            dust = instance_create(xpos, ypos, obj_drop_dash_dust);
            audio_stop_sound(snd_drop_dash);
            if (sign(xspd) == dir) || (sign(xspd) == 0){
                gsp = (gsp / 4) + (drpspd * dir);
                gsp = clamp(gsp, -drpmax, drpmax);
            }else{
                if angle == 0 gsp = drpspd * dir;
                else gsp = (gsp / 2) + (drpspd * dir);
                gsp = clamp(gsp, -drpmax, drpmax);
            }
            dust.image_xscale = sign(gsp);
        }
    }
}
//Top collision
if scr_collision_check_top() && !ground{
    ypos = floor(ypos);
    while (scr_collision_check_top()){
        ypos += 1;
        if !scr_collision_check_top(){
            ypos -= 1;
            break;
        }
    }
    //Find Angle
    if scr_collision_check_top() && !scr_collision_spring_check() /*&& !scr_collision_arg_top(obj_spikes)*/ angle = scr_p_find_angle_from_ceiling();
    if ((angle >= 90 && angle <= 135) || (angle >= 225 && angle <= 270)) && ysp < -2.5 && !tunnel{
        //--- Landing ---//
        landed = true;
        if landed = true{
            ground = true;
        }
        gsp = ysp*-sign(dsin(angle));
        //Set action to 0 (normal)
        action = 0;
        spin = false;
    }else{
        angle = 0;
        if ysp < 0 {ysp = 0;}
    }
}
}

//Update Angle and Lock to ground
if ground{
    if scr_collision_condition(){
        //Lock to ground
        scr_p_find_heights();
        switch mode{
            case 0:
                if ya<yb && check_a ypos = ya-16;
                else if yb<=ya && check_b ypos = yb-16;
                break;
            case 1:
                if xa<xb && check_a xpos = xa-16;
                else if xb<=xa && check_b xpos = xb-16;
                break;
            case 2:
                if ya>yb && check_a ypos = ya+16;
                else if yb>=ya && check_b ypos = yb+16;
                break;
            case 3:
                if xa>xb && check_a xpos = xa+16;
                else if xb>=xa && check_b xpos = xb+16;
                break;
        }
        scr_p_find_tile_coord();
        //Update angle
        //if scr_collision_condition_all() angle = scr_p_find_angle_precise();
        if prevtilex != tile_x || prevtiley != tile_y angle = scr_p_find_angle_from_tile();
    }
}

if !ground && angle != 0{
    angle = 0;
}
//Add xxsp to axsp and yysp to aysp.
axsp += xxsp;
aysp += yysp;
//If both axsp and aysp didn't reach xsp and ysp, the loop will repeat. If both did reach however, the loop will stop and proceed to the next steps.
}
if scr_collision_arg_top(par_monitors) && !scr_collision_monitor_check() && action != 9{
    monitor = scr_collision_arg_top(par_monitors);
    monitor.bumped = true;
    monitor.ysp = -2;
    monitor.y = floor(monitor.y);
    while scr_collision_arg_top(monitor){
        monitor.y -= 1;
        if !scr_collision_arg_top(monitor){
            monitor.y += 1;
            break;
        }
    }
}

//Slope Factor
if action != 5 gsp -= slp*dsin(angle);
else if action == 5
{
    if gsp < 0
    {
        if angle > 180 gsp -= slprollup*dsin(angle);
        else if angle < 180 gsp -= slprolldown*dsin(angle);
    }
    else if gsp > 0
    {
        if angle < 180 gsp -= slprollup*dsin(angle);
        else if angle > 180 gsp -= slprolldown*dsin(angle);
    }
}

//Angle Maintain
if abs(gsp) < 2.5 && ground
{
    if (angle >= 90 && angle <= 270)
    {
        ground = 0;
        gsp = 0;
    }
}

//Leave Ground
if !scr_collision_condition() && !scr_collision_check_bottom() && ground{
    ground = 0;
}

//Gravity
if !ground{
    angle = 0;
    ysp += grv;
}

//Air Drag
if !ground && action != 8 && action != 9 && (ysp < 0 && ysp > -4)
{
    xsp -= ((xsp / 0.125) / 256);
}

//Control Lock
control_lock = max(control_lock-1,0);
if ground && abs(gsp) < 2.5{
    if angle >= 45 && angle <= 315
        control_lock = 30;
}
if !ground control_lock = 0;

//Change gravity
if action = 8
    grv = 0.1875;
else
    grv = 0.21875;

//Limit areas
if action != 9{
    if xpos < obj_camera.minimum_x+16 {xpos = obj_camera.minimum_x+16 xsp=0 gsp=0}
    if xpos > obj_camera.maximum_x-24 {xpos = obj_camera.maximum_x-24 xsp=0 gsp=0}
    if ypos < obj_camera.minimum_y+16 {ypos = obj_camera.minimum_y+16 ysp=0}
}
//if ypos > obj_camera.maximum_y+48 {ypos = obj_camera.maximum_y+48 ysp=0}
