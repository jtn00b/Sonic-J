if action == 1 && key_ah && !drop && drpcharge > 0{
    if drpcharge == 20{
        drop = true;
        audio_play_sound(snd_drop_dash, 0, false);
    }else drpcharge += 1;
}
else if action == 1 && key_a && !drop && drpcharge == 0 && global.drop_dash{
    drpcharge += 1;
}
if drpcharge > 0 && ((action == 1 && key_ar) || (action != 1)){
    drpcharge = 0;
    drop = false;
}
