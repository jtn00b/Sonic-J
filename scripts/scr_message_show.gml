///scr_message_show(title, text1, text2, question, ind)
//"Check" is used to determine if the popup menu is a question or a message. 0 = message, and 1 = question.
check = argument3;
instance_create(-999,-999,obj_mp_controller);
instance_create(-999,-999,obj_mp_ribbon);
title_obj = instance_create(-999,-999,obj_mp_title);
text_obj = instance_create(-999,-999,obj_mp_text);
title_obj.text = argument0;
text_obj.text = argument1;
text_obj.text2 = argument2;
switch(check){
    default:
    case 0:
        ok = instance_create(-999,-999,obj_mp_ok);
        break;
    case 1:
        global.accepted = -1;
        yes = instance_create(-999,-999,obj_mp_yes);
        no = instance_create(-999,-999,obj_mp_no);
        if os_type != os_android obj_mp_controller.option_index = 1;
        break;
}
obj_mp_option.ind = string(argument4);
