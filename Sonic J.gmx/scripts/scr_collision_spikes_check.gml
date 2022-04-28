spikes = scr_collision_arg_any(obj_spikes);
if !spikes return false;
return
(scr_collision_arg_bottom(spikes) && ysp >= 0 && spikes.image_angle == 0) ||
(scr_collision_arg_top(spikes) && spikes.image_angle == 180) ||
(scr_collision_arg_f(spikes) && spikes.image_angle == 90) ||
(scr_collision_arg_e(spikes) && spikes.image_angle == 270);
