///scr_gj_user_auth(username, token)

//Authenticates the GameJolt user given their username and game token.

var username, token;
username = argument0;
token = argument1;

with obj_gj_controller{
    var url = "https://api.gamejolt.com/api/game/v1_2/users/auth/?game_id="+gj_id+"&username="+username+"&user_token="+token;
    var signature = md5_string_utf8(url+gj_private_key);
    url += ("&signature="+signature);
    
    return http_get(url);
}
