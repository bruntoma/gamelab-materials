Materiály pro sledování lekcí
=============================

Přesně ta grafika a zvuky, které vidíš v ukázkách v index.html. Když je použiješ,
bude tvůj projekt vypadat a chovat se stejně jako v lekcích (dlaždice 32 × 32 px,
postava 32 × 40 px, kolizní obdélník 22 × 38 px).

Soubory s koncovkou _stripN (třeba s_coin_strip4.png) GameMaker při importu
sám rozdělí na N snímků. Stačí soubor přetáhnout do Asset Browseru.

Díl 1: Z čeho se skládá hra
  s_player_strip2.png   hráč, 2 snímky chůze, origin Bottom Centre
  s_coin_strip4.png     otáčející se mince, origin Middle Centre, 8 FPS
  s_slime_strip2.png    slizoun, 3 FPS
  s_grass.png           dlaždice trávy
  s_dirt.png            dlaždice hlíny pod trávou
  s_tree.png            strom (dekorace)
  s_cloud.png           mrak (dekorace)
  s_flag.png            vlajka (cíl levelu)
  s_heart.png           srdíčko (životy)
  snd_jump.wav          zvuk skoku
  snd_coin.wav          zvuk sebrání mince

Díl 2: Pohyb a kolize
  s_wall.png            sprite pro o_wall, čtverec 32 × 32
  s_oneway.png          sprite pro o_oneway, polopropustná plošina 32 × 12
  s_spikes.png          bodáky, objekt s parentem o_death (maska jen spodní část,
                        v ukázkách 24 × 20 px od bodu 4, 12)

Díl 3: Grafika a animace
  hrac_sheet.png        arch postavy v původní velikosti, jako v kroku 1
                        (snímek 8 × 10 px, odsazení 1 px, mezera 2 px)
  hrac_sheet_4x.png     stejný arch 4× zvětšený
                        (snímek 32 × 40 px, odsazení 4 px, mezera 8 px)
  s_player_idle_strip2.png, s_player_run_strip4.png, s_player_jump.png,
  s_player_fall.png, s_player_land_strip2.png
                        animace už rozřezané z archu, všem dej origin Bottom Centre
                        (FPS: idle 3, run 10, land 8)
  s_player_mask.png     obdélníková kolizní maska pro mask_index, origin Bottom Centre
  ts_zem.png            tileset: dlaždice 32 × 32, 4 sloupce, dlaždice 0 je prázdná,
                        1 až 16 autotiling trávníku, 17 kámen, 18 keř, 19 květiny
  bg_obloha.png         pozadí 960 × 384 (obloha s kopci)
  snd_land.wav          zvuk dopadu
