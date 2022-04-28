/*This script will create all the needing system objects for the start of the game*/
audio_stop_all();
instance_create(0,0,obj_camera);
instance_create(0,0,obj_music_engine);
instance_create(0,0,obj_hud);
if !global.bonus_stage{
instance_create(0,0,obj_object_controller);
instance_create(0,0,obj_titlecard_controller);
}
if !global.Demo{
    instance_create(0,0,obj_android_keys);
    instance_create(0,0,obj_pause_controller);
}
if instance_exists(par_rings) instance_create(0,0,obj_ring_image_index);
if global.hit != 999+room global.hit = 0;
