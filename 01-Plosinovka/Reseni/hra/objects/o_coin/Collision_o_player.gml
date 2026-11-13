gameManager.mince += 1;     

ds_list_add(gameManager.pickedCoins, id) // pridej do sebranych minci

instance_destroy();   

audio_play_sound(z_mince, 1, 0)