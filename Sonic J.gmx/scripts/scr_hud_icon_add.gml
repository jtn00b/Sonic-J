///scr_hud_icon_add(name)
name = string(argument0);
if instance_exists(obj_hud){
    for(i=0;i<array_length_1d(obj_hud.powerups);i++){
        if obj_hud.powerups[i] == name exit;
        else if obj_hud.powerups[i] == false{
            obj_hud.powerups[i] = name;
            break;
        }
    }
}
