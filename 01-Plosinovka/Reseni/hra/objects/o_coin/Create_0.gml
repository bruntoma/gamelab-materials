index = ds_list_find_index(gameManager.pickedCoins, id);

if (index != -1) // mince je v seznamu sebranych
{
	instance_destroy(); // odstran
}
