while collision_circle(xpos, ypos, 64, par_magnetizable_rings, false, true){
    var _r = collision_circle(xpos, ypos, 64, par_magnetizable_rings, false, true);
    if !_r.magnetized{
        with _r{
            magnetized = true;
            target = other.id;
            mask_index = spr_no_mask;
        }
    }else exit;
}
