///scr_gj_session_close(username, token)

//Closes an online game session for the user given their username and token.

var username, token;
username = argument0;
token = argument1;

with obj_gj_controller{
    var url = "https://api.gamejolt.com/api/game/v1_2/sessions/close/?game_id="+gj_id+"&username="+username+"&user_token="+token;
    var signature = md5_string_utf8(url+gj_private_key);
    url += ("&signature="+signature);
    
    return http_get(url);
}
