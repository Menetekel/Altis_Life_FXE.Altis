/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oel Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fisch Markt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glas Handel",["glass"]]};
	case "iron": {["Altis Metall Handel",["iron_r","copper_r"]]};
	case "diamond": {["Diamanthandel",["diamond","diamondc"]]};
	case "salt": {["Salzhandel",["salt_r"]]};
	case "cop": {["Polizeishop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF"]]};
	case "cement": {["Zementhandel",["cement"]]};
	case "EMT": {["Sani-Shop",["coffee","tbacon","fuelF"]]};
};