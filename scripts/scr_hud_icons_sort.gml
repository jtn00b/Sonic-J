if instance_exists(obj_hud) with obj_hud{
    for(i=0;i<array_length_1d(powerups);i++){
        if powerups[i] == false{
            for(j=i;j<array_length_1d(powerups);j++){
                if j != array_length_1d(powerups)-1 powerups[j] = powerups[j+1];
                else powerups[j] = false;
            }
        }
    }
}
