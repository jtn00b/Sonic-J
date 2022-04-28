var ani_angle_condition = (ani_index = walk_sprite || ani_index = run_sprite || ani_index = run2_sprite || ani_index = skidding_sprite);
if ani_angle_condition{
if !ground{
    if draw_angle <= 180
        draw_angle -=  2.8125;

    else if draw_angle > 180
        draw_angle += 2.8125;
}
else{
if angle < 180 && draw_angle > 180 && angle < 40 draw_angle -= 360;
if angle > 180 && draw_angle < 180 && angle > 320 draw_angle += 360;

if angle >= 40 && angle <= 180 && obj_player.ground && !landed{
    draw_angle = min(draw_angle+2+abs(obj_player.gsp),angle)
}
if angle >= 40 && angle <= 180 && obj_player.ground && landed{
    draw_angle = angle
}

if angle >= 0 && angle < 40 && obj_player.ground {
    draw_angle = max(draw_angle-2-abs(obj_player.gsp),0)
}

if angle >= 0 && angle < 180 && draw_angle >= 360 && draw_angle <180 && obj_player.ground {
    draw_angle = 0
}

if angle > 180 && angle <= 360 && draw_angle >= 0 && draw_angle <90 && obj_player.ground {
    draw_angle = 360
}

if angle > 180 && angle <= 320 && obj_player.ground && !landed {
    draw_angle = max(draw_angle-2-abs(obj_player.gsp),angle)
}
if angle > 180 && angle <= 320 && obj_player.ground && landed {
    draw_angle = angle
}

if angle > 320 && angle <= 360 && obj_player.ground {
    draw_angle = min(draw_angle+2+abs(obj_player.gsp),360)
}

if angle = 0 {draw_angle=0}
}
} else draw_angle = 0;
