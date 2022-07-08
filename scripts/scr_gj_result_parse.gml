//Get the essential data from GameJolt after the request. All data is converted into data structures.

with obj_gj_controller{
    show_debug_message(ds_map_find_value(async_load, "result"));
    result = ds_map_find_value(async_load, "result");
    if result != "IOException"{
        result = json_decode(result);
        response = result[? "response"];
        success = response[? "success"];
    }else exit;
}
