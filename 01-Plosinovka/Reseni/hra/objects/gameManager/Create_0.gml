greenKeys = 1;
mince=0;

playerReturning = false;

//TODO

pickedCoins = ds_list_create()	

//VARIANTA 1, JSON
//saveFile = "save.json"
//if (file_exists(saveFile)) {
//    var buffer = buffer_load(saveFile);
//    var json = buffer_read(buffer, buffer_string);
//    buffer_delete(buffer);
    
//    // 2. Převod JSON textu zpět na pole (array)
//    var arr = json_parse(json);
    
//    // 3. Vyčištění starého seznamu a naplnění novými daty
//    ds_list_clear(pickedCoins);
//    for (var i = 0; i < array_length(arr); i++) {
//        ds_list_add(pickedCoins, arr[i]);
//    }
    
//    show_debug_message("DS List byl načten!");
//}


//VARIANTA 2, TXT
//saveFile = "save.txt"
//if (file_exists(saveFile)) {
//    var file = file_text_open_read(saveFile);
//    var data_string = file_text_read_string(file);
//    file_text_close(file);
    
//    ds_list_read(pickedCoins, data_string);
//}
