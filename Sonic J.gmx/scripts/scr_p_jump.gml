//Start Jumping
if (action == 0 || action == 3 || action == 5 || action == 6){
    if ground && (key_a) && !(scr_collision_check_top()){ //Basically, the character won't bother jumping if its upper sensors detect ground.
        xsp -= jmp*dsin(angle);
        ysp -= jmp*dcos(angle);
        action = 1;
        ground = false;
        angle = 0;
        spin = true;
        audio_play_sound(snd_player_jump,0,false);
    }
}
//Small jump
if action == 1 && key_ar && ysp < -4 && !ground && !(shield == "bubble" && sh_action) && !sh_bubble_bounce
    ysp = -4;

