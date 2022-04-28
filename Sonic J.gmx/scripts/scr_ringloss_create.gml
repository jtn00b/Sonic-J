a = 0;
d = 101.25;
b = false;
c = 4;

while a < (min(global.player_rings, 64))
{
    if a < 32 ringLossID = instance_create(x,y,obj_ringloss);
    else ringLossID = instance_create(x,y,obj_background_ringloss);
    ringLossID.vspeed = -dsin(d)*c;
    ringLossID.hspeed = dcos(d)*c;
    ringLossID.can_grab = false;
    if b
    {
        ringLossID.hspeed *= -1;
        d += 22.5;
    }
    b = !b;
    a += 1;
    if a == 16
    {
        c = 2;
        d = 101.25;
    }
    else if a == 32
    {
        c = 7;
        d = 101.25
    }
    else if a == 48
    {
        c = 10;
        d = 101.25
    }
}

//Finish the code of ringloss, reseting the ring value
global.player_rings = 0;
//global.player_rings -= min(global.player_rings, 64);
