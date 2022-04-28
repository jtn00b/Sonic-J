//Set the value first
spindrev -= spindrev / .125 / 256;
spindrev = max(spindrev, 0);

//Start the action
if action == 2 && ground && key_a
{
    action = 4;
    spindrev = 0;
}

//Charging
if action == 4{
    if key_a
    {
        audio_sound_pitch(snd_player_spindash, 1+((spindrev/2)*0.1));
        spindrev += 2;
        spindrev = min(spindrev, 8);
        if audio_is_playing(snd_player_spindash) audio_stop_sound(snd_player_spindash);
        audio_play_sound(snd_player_spindash, 10, false);
        ani_subimg = 0;
    }
        
    //Release
    if !key_d{
        gsp = (8 + (floor(spindrev) / 2)) * dir;
        action = 5;
        obj_camera.hor_lag = 16;
        audio_stop_sound(snd_player_spindash);
        audio_play_sound(snd_player_release, 10, false);
        }
}
