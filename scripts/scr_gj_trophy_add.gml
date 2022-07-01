///scr_gj_trophy_add(username, token, trophyid)

//Opens an online game session for the user given their username and token.

var username, token, trophy_id;
username = argument0;
token = argument1;
trophy_id = argument2;

with obj_gj_controller{
    var url = "https://api.gamejolt.com/api/game/v1_2/trophies/add-achieved/?game_id="+gj_id+"&username="+username+"&user_token="+token+"&trophy_id="+trophy_id;
    var signature = md5_string_utf8(url+gj_private_key);
    url += ("&signature="+signature);
    
    return http_get(url);
}
