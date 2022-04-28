///scr_set_prev_coord(number)
length = argument0-1;

//Add missing array entries if they're nonexistent
if array_length_1d(prevx) != length+1{
    for(i=array_length_1d(prevx);i<length+1;i++) prevx[i] = 0;
}if array_length_1d(prevy) != length+1{
    for(i=array_length_1d(prevy);i<length+1;i++) prevy[i] = 0;
}if array_length_1d(prevdx) != length+1{
    for(i=array_length_1d(prevdx);i<length+1;i++) prevdx[i] = 0;
}if array_length_1d(prevdy) != length+1{
    for(i=array_length_1d(prevdy);i<length+1;i++) prevdy[i] = 0;
}

//Set the previous x and y array entries
for(i=length;i>=0;i--){
    if i == 0{
        prevx[0] = xpos;
        prevy[0] = ypos;
        prevdx[0] = draw_x;
        prevdy[0] = draw_y;
    }else{
        prevx[i] = prevx[i-1];
        prevy[i] = prevy[i-1];
        prevdx[i] = prevdx[i-1];
        prevdy[i] = prevdy[i-1];
    }
}
