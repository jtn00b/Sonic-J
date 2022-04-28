while scr_collision_box_main(par_rings){
    ring = scr_collision_box_main(par_rings);
    if !ring.collected && ring.can_grab{
    global.player_rings += ring.value;
        with ring{
            depth = -2;
            sprite_index = spr_ring_collected;
            image_index = 0;
            collected = true;
            mask_index = spr_no_mask;
            if audio_is_playing(snd_ring_collect) audio_stop_sound(snd_ring_collect);
            audio_play_sound(snd_ring_collect, 0, false);
            magnetized = false;
            target = noone;
            hspeed = 0;
            vspeed = 0;
            gravity = 0;
        }
    }
    else exit;
}
