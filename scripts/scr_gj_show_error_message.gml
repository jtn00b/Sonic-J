with obj_gj_controller{
    var error_message = response[? "message"];
    
    //Make new lines in case the string is too long
    var i = 0;
    var j = 0;
    var pos = 1;
    var newpos = min(string_length(error_message), 27);
    message_line[0] = error_message;
    while string_length(message_line[i]) > 26{
        while j != " "{
            j = string_char_at(error_message, newpos);
            if j != " " {newpos--;}
            else{
                error_message = string_delete(error_message, newpos, 1)
            }
        }
        message_line[i] = string_copy(error_message, pos, newpos-(pos));
        j = 0;
        pos = newpos;
        newpos = min(string_length(error_message), newpos+27);
        message_line[i+1] = string_copy(error_message, pos, string_length(error_message)-(pos-1));
        i++;
    }
    if array_length_1d(message_line) == 2{
        return scr_message_show("ERROR", message_line[0], message_line[1], 0, "error");
    }else{
        error_message = "";
        for (i=0; i<array_length_1d(message_line); i++){
            show_debug_message(message_line[i]);
            error_message += message_line[i];
            if i != array_length_1d(message_line)-1 {error_message += "#";}
        }
        return scr_message_show("ERROR", error_message, 0, 0, "error");
    }
}
