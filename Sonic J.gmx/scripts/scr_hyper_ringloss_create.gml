a = 0;
d = 112.5;
b = false;
c = 4;
n = min(max(floor(global.player_rings/4), 1), 8); //Number of rings to spawn
value = floor(global.player_rings/n); //Amount of rings which each hyper ring contain

while a < n
{
    instance_create(x+irandom_range(-20, 20), y+irandom_range(-20, 20), obj_ring_sparkle3);
    ringLossID = instance_create(x,y,obj_hyper_ringloss);
    ringLossID.vspeed = -dsin(d)*c;
    ringLossID.hspeed = dcos(d)*c;
    ringLossID.xscale = 1-0.5*b;
    ringLossID.yscale = 0.5+0.5*b;
    ringLossID.can_grab = false;
    ringLossID.value = value;
    if b
    {
        ringLossID.hspeed *= -1;
        d += 45;
    }
    b = !b;
    a += 1;
}

//Finish the code of ringloss, reseting the ring value
global.player_rings = 0;
