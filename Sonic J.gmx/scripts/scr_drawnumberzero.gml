///scr_drawnumberzero(x, y, number, length)
    var a, b;
    a = string(argument2);
    b = "";

    // Add all necessary 0    
    for (i=0; i<(argument3-string_length(a)); i+=1)
        b = b + "0";

    // Return
    draw_text(argument0, argument1, b+a);
