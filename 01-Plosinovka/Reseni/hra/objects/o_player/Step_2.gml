// pohyb i kolize už proběhly, jen se podívej na výsledek
var na_zemi = place_meeting(x, y + 1, o_wall)
    || (place_meeting(x, y + 1, o_oneway) && !place_meeting(x, y, o_oneway));

var novy = s_player_idle;
image_speed = 1;
if (!na_zemi) {
    if (vsp < 0) novy = s_player_jump;
    else novy = s_player_duck;
} else if (hsp != 0) {
    novy = s_player_walk;
    image_speed = abs(hsp) / max_rychlost;   // nohy podle rychlosti
}

// nová animace vždy od prvního snímku
if (sprite_index != novy) {
    sprite_index = novy;
    image_index = 0;
}
if (hsp != 0) image_xscale = sign(hsp);