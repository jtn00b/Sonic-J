ini_open("settings.ini");
if os_type == os_windows window_set_fullscreen(ini_read_real("graphics", "fullscreen", false));
global.screen_adapting = ini_read_real("graphics", "android screen adapting", (os_type = os_android));
global.vsync = ini_read_real("graphics", "vsync", (os_type != os_android))
display_reset(0, global.vsync);
global.show_fps = ini_read_real("graphics", "fps", (os_type = os_android));
global.hud_new = ini_read_real("visual", "hud", true);
global.camera_old = ini_read_real("visual", "camera", false);
global.motorola_shader = ini_read_real("visual", "motorola", false);
global.key_l = ini_read_real("controls", "left", vk_left);
global.key_r = ini_read_real("controls", "right", vk_right);
global.key_u = ini_read_real("controls", "up", vk_up);
global.key_d = ini_read_real("controls", "down", vk_down);
global.key_a = ini_read_real("controls", "jump", ord("A"));
global.key_b = ini_read_real("controls", "back", ord("S"));
global.key_del = ini_read_real("controls", "delete", ord("D"));
global.key_s = ini_read_real("controls", "start", vk_enter);
global.joy_x = ini_read_real("controls", "joystick x", 64);
global.joy_y = ini_read_real("controls", "joystick y", 178);
global.drop_dash = ini_read_real("drop", "dash", true);
global.a_x = ini_read_real("controls", "button x", global.Window_X-64);
global.a_y = ini_read_real("controls", "button y", 178);
global.buttons_alpha = ini_read_real("controls", "button alpha", 1);
global.bgm_gain = ini_read_real("audio", "music", 1);
audio_group_set_gain(ad_bgm, global.bgm_gain, 0);
global.sfx_gain = ini_read_real("audio", "sfx", 1);
audio_group_set_gain(audiogroup_default, global.sfx_gain, 0);
ini_close();
