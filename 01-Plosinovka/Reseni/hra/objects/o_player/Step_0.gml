// vstup a vodorovná rychlost
var smer = keyboard_check(vk_right) - keyboard_check(vk_left);
if (smer != 0) {
    hsp = clamp(hsp + smer * zrychleni, -max_rychlost, max_rychlost);
} else {
    hsp = max(abs(hsp) - treni, 0) * sign(hsp);
}

// gravitace a skok
vsp = min(vsp + gravitace, max_pad);
var na_plosine = place_meeting(x, y + 1, o_oneway) && !place_meeting(x, y, o_oneway);
var na_zemi = place_meeting(x, y + 1, o_wall) || na_plosine;
if (na_zemi && keyboard_check_pressed(vk_space)) {
    vsp = -sila_skoku;
}
if (keyboard_check_released(vk_space) && vsp < 0) vsp *= 0.5;   // krátký skok
if (na_plosine && keyboard_check(vk_down)) y += 1;   // seskok z plošiny

// kolize vodorovně
if (place_meeting(x + hsp, y, o_wall)) {
    while (!place_meeting(x + sign(hsp), y, o_wall)) x += sign(hsp);
    hsp = 0;
}
x+=hsp

// polopropustná plošina zastaví jen pád shora
if (vsp > 0 && !place_meeting(x, y, o_oneway) && place_meeting(x, y + vsp, o_oneway)) {
    while (!place_meeting(x, y + 1, o_oneway)) y += 1;
    vsp = 0;
}

// kolize svisle
if (place_meeting(x, y + vsp, o_wall)) {
    while (!place_meeting(x, y + sign(vsp), o_wall)) y += sign(vsp);
    vsp = 0;
}
y += vsp;

// všechno smrtící má parent o_death
if (place_meeting(x, y, o_death)) room_restart();

//if (keyboard_check_pressed(ord("F")))
//{
//	instance_create_layer(x, y - 50, "Instances_1", o_bullet);
//}
