switch_id = scr_collision_box_main(obj_tunnel_switch);
if switch_id == noone exit;

if switch_id{
    if (scr_collision_box_main(obj_tunnel_switch_left) && xpos < switch_id.x) || (scr_collision_box_main(obj_tunnel_switch_right) && xpos > switch_id.x){
        tunnel = true;
    }
    if (scr_collision_box_main(obj_tunnel_switch_left) && xpos > switch_id.x) || (scr_collision_box_main(obj_tunnel_switch_right) && xpos < switch_id.x){
        tunnel = false;
    }
}

if tunnel && ground{
    if action != 5{
        audio_play_sound(snd_player_spin, 1, false);
        action = 5;
    }
}
