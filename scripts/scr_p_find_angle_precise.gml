hspace = sensor_hspace-1;
check = 24;

acos = dcos(angle);
asin = dsin(angle);

x1 = round(xpos-(acos*hspace));
y1 = round(ypos+(asin*hspace));

x2 = round(xpos+(acos*hspace));
y2 = round(ypos-(asin*hspace));

done1 = 0;
done2 = 0;

i = check;
while (i>0)
{
    if !done1
    {
        if scr_collision_check_point(x1, y1) done1 = true;
        x1 += asin;
        y1 += acos;
    }
    if !done2
    {
        if scr_collision_check_point(x2, y2) done2 = true;
        x2 += asin;
        y2 += acos;
    }
    if done1 && done2 break;
    i -= 1;
}

return round(point_direction(x1, y1, x2, y2));

