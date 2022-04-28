//This scripts requires scr_p_get_hurt() to set the hurt statement
if action != 8 hurttimer = max(hurttimer -1, 0);

if hurttimer = 0 && invincible_timer == 0
{
    if hurt = 1
    {
        if global.hit != 999+room global.hit += 1;
        action = 8;
        ysp = -4;
        xsp = -2 * dir;
        ground = false;
        hurt = 0;
        hurttimer = 120;
        spin = false;
        if spike audio_play_sound(snd_spikes_hit, 0, false);
        if shield == false{
            if !hyper_ring scr_ringloss_create();
            else{
                scr_hyper_ringloss_create();
                hyper_ring = false;
            }
            audio_play_sound(snd_player_ringloss, 0, false);
        }else{
            if !spike audio_play_sound(snd_player_hurt, 0, false);
            shield = false;
            scr_hud_icon_delete("regular");
            scr_hud_icon_delete("electric");
            scr_hud_icon_delete("fire");
            scr_hud_icon_delete("bubble");
            scr_hud_icons_sort();
        }
    }
    else if hurt = 2
    {
        global.hit = 999+room;
        action = 9;
        ysp = -7;
        xsp = 0;
        ground = false;
        hurt = 0;
        hurttimer = 150;
        if spike audio_play_sound(snd_spikes_hit, 0, false);
        else audio_play_sound(snd_player_hurt, 0, false);
    }
}

if action = 8 && ground{
    xsp = 0;
    gsp = 0;
    action = 0;
}

if action = 8 || action = 9
    allow_input = false;
else if action != 8 && action != 9 && !(instance_exists(obj_titlecard_controller) && instance_exists(obj_fade))
    allow_input = true;

hurt = 0;
