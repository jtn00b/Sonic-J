//To use less copy pasting, we'll use xspd as a variable handling the horizontal speed of the character depending on his ground variable.
if ground xspd = gsp; else xspd = xsp;

//And now we update his horizontal speed depending on the player input.
if (action == 0 || action == 1 || action == 7 || action == 7.5) && key_l && !scr_collision_sensor_e() && control_lock <= 0
{
    if (xspd > 0){
        if ground xspd -= dec; else xspd -= air; //Use either dec or air depending on ground state.
        /*if (xspd <= 0)
            xspd = -0.5;*/
    }
    else if (xspd > -top){
        if ground xspd -= acc; else xspd -= air; //Use either acc or air depending on ground state.
        /*if (xspd <= -top)
            xspd = -top;*/
    }
}
if (action == 0 || action == 1 || action == 7 || action == 7.5) && key_r && !scr_collision_sensor_f() && control_lock <= 0
{
    if (xspd < 0){
        if ground xspd += dec; else xspd += air; //Use either dec or air depending on ground state.
        /*if (xspd >= 0)
            xspd = 0.5;*/
    }
    else if (xspd < top){
        if ground xspd += acc; else xspd += air; //Use either acc or air depending on ground state.
        /*if (xspd >= top)
            xspd = top;*/
    }
}
//Apply Friction
if (action == 0 || action == 1) && (!key_l && !key_r && ground && control_lock <= 0) || (action == 2 || action == 3 || action == 4)
    xspd -= min(abs(xspd), frc) * sign(xspd);
    
//And finally set either gsp to xsp to xspd depending on if the character is on the ground or not.
if ground gsp = xspd; else xsp = xspd;

//Update x and y speed when the player is on the ground.
if ground{
    xsp = gsp*dcos(angle);
    ysp = gsp*-dsin(angle); 
}

//Stop colliding wall
if (gsp < 0 && scr_collision_sensor_e())
{
    gsp = 0;
}
if (gsp > 0 && scr_collision_sensor_f())
{
    gsp = 0;
}
