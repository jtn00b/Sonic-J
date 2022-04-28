if ground && action == 0 && key_l && skidding == 0 && gsp >= 2 && control_lock <= 0
{
    skidding = -1;
    gsp -= (0.5/4.5);
}
if ground && action == 0 && key_r && skidding == 0 && gsp <= -2 && control_lock <= 0
{
    skidding = 1;
    gsp += (0.5/4.5);
}
if (skidding = 1 && gsp > 0) || (skidding = -1 && gsp < 0) || (skidding = 1 && key_l && gsp < 0) ||
(skidding = -1 && key_r && gsp > 0) || (skidding <> 0 && !key_l && !key_r) || (skidding <> 0 && abs(gsp) = 0) || (skidding <> 0 && action <> 0)
    skidding = 0;
    
if skidding <> 0 && skidding_sound = 0
    audio_play_sound(snd_player_skidding, 10, false);
    skidding_sound = 1;

if skidding = 0
    skidding_sound = 0;

if skidding = 0{
    skidding_effect_timer = 0;
    skidding_effect_flag = 0;
}
    
if skidding <> 0 && ground
{
    if skidding_effect_flag = false{
        instance_create(x,y+16,effectSkiddingDust);
        skidding_effect_flag = true;
    }
    skidding_effect_timer += 1;
    if skidding_effect_timer >= 7{
        instance_create(x,y+16,effectSkiddingDust);
        skidding_effect_timer = 0;
    }
        
}

