gamepadIndex = argument0;
for (var i = gp_face1; i < gp_axisrv; i++ ) {
    if (gamepad_button_check_released(gamepadIndex, i)) {
return true;
}
}
return false;
