//-- ACTION LIST --//
/*
0 = neutral
1 = jump
2 = crouch down
3 = look up
4 = spindash charge
5 = roll
6 = push
7 = spring (rotate)
7.5 = spring (straight)
8 = skidding
*/
if !global.Demo{
if allow_input{
key_l = (keyboard_check(global.key_l) || (gamepad_axis_value(0, gp_axislh) < -0.5) || gamepad_button_check(0, gp_padl)) || (instance_exists(obj_android_keys) && obj_android_keys.left);
key_r = (keyboard_check(global.key_r) || (gamepad_axis_value(0, gp_axislh) > 0.5) || gamepad_button_check(0, gp_padr)) || (instance_exists(obj_android_keys) && obj_android_keys.right);
key_u = (keyboard_check(global.key_u) || (gamepad_axis_value(0, gp_axislv) < -0.5) || gamepad_button_check(0, gp_padu)) || (instance_exists(obj_android_keys) && obj_android_keys.up);
key_d = (keyboard_check(global.key_d) || (gamepad_axis_value(0, gp_axislv) > 0.5) || gamepad_button_check(0, gp_padd)) || (instance_exists(obj_android_keys) && obj_android_keys.down);
key_a = keyboard_check_pressed(global.key_a) || keyboard_check_pressed(global.key_b) || keyboard_check_pressed(global.key_del) || gamepad_button_check_pressed(0, gp_face1);
key_ar = keyboard_check_released(global.key_a) || keyboard_check_released(global.key_b) || keyboard_check_released(global.key_del) || gamepad_button_check_released(0, gp_face1);
key_ah = keyboard_check(global.key_a) || keyboard_check(global.key_b) || keyboard_check(global.key_del) || gamepad_button_check(0, gp_face1);
}
else{
key_l = 0;
key_r = 0;
key_u = 0;
key_d = 0;
key_a = 0;
key_ar = 0;
key_ah = 0;
}
}
else{
if i_t[iii] == time{
    key_l = i_l[iii];
    key_r = i_r[iii];
    key_u = i_u[iii];
    key_d = i_d[iii];
    key_a = i_a[iii];
    key_ar = i_a[iii];
    key_ah = i_a[iii];
    if key_ar == 0 key_ar = 1; else key_ar = 0;
    iii+=1;
}else{
    if key_a key_a = 0;
    if key_ar key_ar = 0;
}
}

//-- Hurt System --//
scr_p_hurt();

//-- Movement --//
scr_p_move();

//-- Direction Change --//
scr_p_direction_update();

//-- Shield action --//
if (shield != false && shield != "regular") scr_p_shield_action();

//-- Drop Dash--//
scr_p_drop_dash_charge();

//-- Jumping --//
if !tunnel && !(action = 5 && scr_collision_box_main(obj_tunnel_switch)) scr_p_jump();

//-- Crouch Down --//
//Start crouching down
if action == 0 && ground && key_d && gsp == 0
    action = 2;
    
//Stop crouching
if action = 2 && !key_d
    action = 0;

//-- Look Up --//
//Start looking up
if action == 0 && ground && key_u && gsp == 0
    action = 3;
//Stop looking up
if action = 3 && !key_u
    action = 0;

//-- Spindash --//
scr_p_spindash();

//-- Rolling --//
scr_p_roll();

//-- Pushing --//
scr_p_push();

//-- Skidding --//
scr_p_skidding();

//-- Ring Magnetization --//
if shield == "electric" scr_p_attract_rings();

//-- Debugs? --//
if !global.Demo{
    if keyboard_check_pressed(vk_f1)
        scr_p_get_hurt();
    if keyboard_check_pressed(vk_f2){
        if !debug debug = true; else debug = false;
    }
    if keyboard_check_pressed(vk_f3)
        game_restart();
    if keyboard_check_pressed(vk_f4){
        if room_speed == 60 room_speed = 1; else room_speed = 60;
    }
    if keyboard_check_pressed(vk_f5){
        global.player_rings += 50;
        audio_play_sound(snd_ring_collect, 0, false);
    }
    if keyboard_check_pressed(vk_f6){
        global.hud_new = !global.hud_new;
    }
}

//--Check if the player is spinning or not --//
if action == 1 || action == 5 || (ani_index == spin_sprite) spin = true; else spin = false;
scr_p_collision_sensors_update();

if (((keyboard_check_pressed(vk_anykey) || scrGamepadCheckReleasedAnyButton(0)) && os_type == os_windows) || (mouse_check_button_pressed(mb_left) && os_type == os_android)) && global.Demo && !instance_exists(fade){
    fade = instance_create(0,0,obj_fade);
    fade.trans_type = 2;
    fade.fade_mode = 0;
    fade.destination = rm_title_screen;
    fade.color_red = 0;
    fade.color_green = 0;
    fade.color_blue = 0;
    fade.fade_speed = 15;
    fade.trans_timer = 30;
}
