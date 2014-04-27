/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Unprozessiertes �l"};
	case "life_inv_oilp": {"Prozessiertes �l"};
	case "life_inv_heroinu": {"Unprozessiertes Heroin"};
	case "life_inv_heroinp": {"Prozessiertes Heroin"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marihuana"};
	case "life_inv_apple": {"Apfel"};
	case "life_inv_rabbit": {"Hasenfleisch"};
	case "life_inv_salema": {"Lachs"};
	case "life_inv_ornate": {"Ornate Fleisch"};
	case "life_inv_mackerel": {"Makrele"};
	case "life_inv_tuna": {"Thunfisch"};
	case "life_inv_mullet": {"Mullet Fleisch"};
	case "life_inv_catshark": {"Katzenhaifleisch"};
	case "life_inv_turtle": {"Schildkr�tenfleisch"};
	case "life_inv_fishingpoles": {"Angel"};
	case "life_inv_water": {"Wasserflasche"};
	case "life_inv_coffee": {"Kaffee"};
	case "life_inv_turtlesoup": {"Schildkr�tensuppe"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Benzinkanister - leer"};
	case "life_inv_fuelF": {"Benzinkanister - voll"};
	case "life_inv_pickaxe": {"Spitzhacke"};
	case "life_inv_copperore": {"Kupfererz"};
	case "life_inv_ironore": {"Eisenerz"};
	case "life_inv_ironr": {"Eisenbarren"};
	case "life_inv_copperr": {"Kupferbarren"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salz"};
	case "life_inv_saltr": {"Rafiniertes Salz"};
	case "life_inv_glass": {"Glas"};
	case "life_inv_diamond": {"Rohdiamant"};
	case "life_inv_diamondr": {"Geschliffenerdiamant"};
	case "life_inv_tbacon": {"Speck"};
	case "life_inv_redgull": {"RedGull"};
	case "life_inv_lockpick": {"Dietrich"};
	case "life_inv_peach": {"Pfirsich"};
	case "life_inv_coke": {"Unprozessiertes Kokain"};
	case "life_inv_cokep": {"Prozessiertes Kokain"};
	case "life_inv_spikeStrip": {"Nagelbrett"};
	case "life_inv_rock": {"Stein"};
	case "life_inv_cement": {"Zementsack"};
	case "life_inv_goldbar": {"Goldbarren"};
	case "life_inv_moonshine": {"Moonshine"};
	case "life_inv_wine": {"Wine"};
	case "life_inv_grapes": {"Grapes"};
	case "life_inv_wood": {"Holz"};
	case "life_inv_plank": {"Bretter"};
	
	//License Block
	case "license_civ_driver": {"Auto-Lizenz"};
	case "license_civ_air": {"Piloten-Lizenz"};
	case "license_civ_heroin": {"Heroin-Lizenz"};
	case "license_civ_gang": {"Gang-Lizenz"};
	case "license_civ_oil": {"�l-Lizenz"};
	case "license_civ_dive": {"Tauch-Lizenz"};
	case "license_civ_boat": {"Boots-Lizenz"};
	case "license_civ_gun": {"Schusswaffen-Lizenz"};
	case "license_cop_air": {"Piloten-Lizenz"};
	case "license_cop_swat": {"SEK-Lizenz"};
	case "license_cop_cg": {"K�chstenwache-Lizenz"};
	case "license_civ_rebel": {"Rebelen-Lizenz"};
	case "license_civ_truck": {"LKW-Lizenz"};
	case "license_civ_diamond": {"Diamanten-Lizenz"};
	case "license_civ_copper": {"Kupfer-Lizenz"};
	case "license_civ_iron": {"Eisen-Lizenz"};
	case "license_civ_sand": {"Sand-Lizenz"};
	case "license_civ_salt": {"Salz-Lizenz"};
	case "license_civ_coke": {"Kokain-Lizenz"};
	case "license_civ_marijuana": {"Mariuhana-Lizenz"};
	case "license_civ_cement": {"Zementmixer-Lizenz"};
	case "license_civ_grapes": {"Weinkelter-Lizenz"};
	case "license_civ_moonshine": {"Schwarzbrennlizenz"};
	case "license_civ_wood": {"Holzverarbeitung"};
};
