//Setup the directionState
directionState = 0;

//Change the directionState if pressing
if (key_l || key_r) directionState = 1; else directionState = 0;
if !ground && (key_l || key_r) directionState = 2; else directionState = 0;

//Change the direction by directionState
if directionState = 1{
    if gsp < 0 && dir = -1 dir = -1;
    if gsp > 0 && dir = 1 dir = 1;
}
if directionState = 2{
    if key_l dir = -1
    if key_r dir = 1
}
if !directionState
    {
        if key_l && gsp < 0 && dir = 1 dir = -1;
        if key_r && gsp > 0 && dir = -1 dir = 1;
    }

