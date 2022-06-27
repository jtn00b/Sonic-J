// This script is used for scr_p_collision_sensors_update();

// Right Wall Mode
if angle >= 45 && angle <= 134
return 1;

// Ceiling Mode
else if angle >= 135 && angle <= 225
return 2;

// Left Wall Mode
else if angle >= 226 && angle <= 314
return 3;

// Floor Mode
else return 0;
