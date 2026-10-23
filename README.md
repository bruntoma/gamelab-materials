Tyto materiály jsou z velké části generované pomocí AI a zatím nebyly ověřeny člověkem,
není tedy zaručena stoprocentní funkčnost a pravdivost uvedených informací.

V každé lekci je dostupný ke stažení soubor index.html obsahující lekce s potřebnou teorií a úkoly k procvičení.
Seznam úkolů je uveden vždy na konci lekce, zkuste si je splnit.
Potřebné assety jsou vždy ve složce Materialy, ale pokud chcete, můžete použít vlastní:
- Materialy/Lekce: přesně ta grafika a zvuky, které jsou v ukázkách v lekcích. S nimi se dá lekce sledovat krok za krokem.
- Materialy/Improvizace: další volně licencované grafiky, hudba a zvuky pro vlastní nápady.

Obsah je dostupný online na adrese https://bruntoma.github.io/gamelab-materials/


if (!instance_exists(gameManager)) {
    instance_create_layer(0, 0, "Instances", gameManager);
}

if (gameManager.playerReturning == true)
{
	x = o_returnPoint.x
	y = o_returnPoint.y
	gameManager.playerReturning = false
}
else
{
	x = o_spawnPoint.x
	y = o_spawnPoint.y
}
