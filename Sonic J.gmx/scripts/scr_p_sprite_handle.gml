if skidding = 0{
    switch (action){
        case 0:
            if ground{
                if gsp == 0
                    ani_to_be_set = stand_sprite;
                else if abs(gsp) > 0 && abs(gsp) < 6
                    ani_to_be_set = walk_sprite;
                else if abs(gsp) >= 6 && abs(gsp) < 11
                    ani_to_be_set = run_sprite;
                else
                    ani_to_be_set = run2_sprite;
            }
            ani_subimg_loop = 0;
            break;
        case 1:
        case 5:
            ani_to_be_set = spin_sprite;
            ani_subimg_loop = 0;
            break;
        case 4:
            ani_to_be_set = spindash_sprite;
            ani_subimg_loop = 0;
            break;
        case 2:
            ani_to_be_set = crouch_sprite;
            ani_subimg_loop = 3
            break;
        case 3:
            ani_to_be_set = lookup_sprite;
            ani_subimg_loop = 3;
            break;
        case 6:
            ani_to_be_set = pushing_sprite;
            ani_subimg_loop = 0;
            break;
        case 7:
            ani_to_be_set = rotate_sprite;
            ani_subimg_loop = 0;
            break;
        case 7.5:
            ani_to_be_set = up_sprite;
            if ysp >= 0 && (ani_index == up_sprite || ani_to_be_set == up_sprite){
                if abs(gsp) >= 0 && abs(gsp) < 6{
                    ani_to_be_set = walk_sprite;
                    ani_subimg_duration_set = floor(max(2, 7-abs(gsp)));
                }
                else if abs(gsp) >= 6 && abs(gsp) < 11{
                    ani_to_be_set = run_sprite;
                    ani_subimg_duration_set = floor(max(0, 7-abs(gsp)));
                }
                else{
                    ani_to_be_set = run2_sprite;
                    ani_subimg_duration_set = floor(max(0, 7-abs(gsp)));
                }
            }
            ani_subimg_loop = 0;
            break;
        case 8:
            ani_to_be_set = hurt_sprite;
            ani_subimg_loop = 0;
            break;
        case 9:
            ani_to_be_set = die_sprite;
            ani_subimg_loop = 0;
            break;
    }
}
else if skidding <> 0
{
    ani_to_be_set = skidding_sprite;
    ani_subimg_loop = 5;
}

switch (ani_to_be_set){
case walk_sprite:
    if ground ani_subimg_duration_set = floor(max(2, 7-abs(gsp)));
    break;
case run_sprite:
case run2_sprite:
    if ground ani_subimg_duration_set = floor(max(0, 7-abs(gsp)));
    break;
case spin_sprite:
    if ground ani_subimg_duration_set = floor(max(0, 4-abs(gsp)));
    if drop{
        ani_subimg_duration_set = 2;
        if ani_subimg >= 1 ani_subimg = -1;
    }
    break;
case spindash_sprite:
    ani_subimg_duration_set = 1;
    break;
case stand_sprite:
case pushing_sprite:
    ani_subimg_duration_set = 7;
    break;
case crouch_sprite:
case lookup_sprite:
    ani_subimg_duration_set = 4;
    break;
case rotate_sprite:
    ani_subimg_duration_set = 4;
    break;
case up_sprite:
    ani_subimg_duration_set = 2;
    break;
case skidding_sprite:
    ani_subimg_duration_set = 4;
    if ground && ani_subimg <= 5 && ani_subimg > 1 && abs(gsp) >= 2.5{
        if ani_subimg == 4 ani_subimg = 2;
    }
    else if ground && ani_subimg >= 1 && abs(gsp) < 2.5
        ani_subimg = 5;
    else if !ground{
        if ani_subimg < 5{
            if ani_subimg == 4 ani_subimg = 2;
        }
        else ani_subimg_loop = 5;
    }
    break;
}
