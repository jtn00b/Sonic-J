// -- Sonic 3 Legacy Animation Angle --//
var ani_angle_condition = ani_index = walk_sprite || ani_index = run_sprite || ani_index = run2_sprite;

if ground
{
    if ani_angle_condition && (angle >= 45 && angle <= 315)
        draw_angle = angle;
        
    else draw_angle = 0;
}
else
{
    if ani_angle_condition
    {
        if draw_angle <= 180
            draw_angle -=  2.8125;

        else if draw_angle > 180
            draw_angle += 2.8125;
    }
    else draw_angle = 0;
}
