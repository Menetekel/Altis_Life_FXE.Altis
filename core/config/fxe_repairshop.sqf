/*
	File: fn_repair.sqf
	Author: LR copied mostly from  Bryan "Tonic" Boardwine
	
	Description:
	Sollte das Auto reparieren. 
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !isPlayer _unit) exitWith {};
_price = 500
if(life_cash < _price) exitWith {hint "Du hast keine €500 um die Rechnung zu bezahlen."};
_nearestVehicle = nearestObjects[getPosATL player,["Car","Ship","Submarine","Air"],10] select 0;
if(isNil "_nearestVehicle") exitWith {hint "Es ist kein Auto in der Nähe.."};
titleText["Dein Auto wird jetzt repariert","PLAIN"];
sleep 2;
titleText["Hmm ... ja Moment.","PLAIN"];
sleep 5;
if(player distance (_this select 0) > 5) exitWith {titleText["Bitte warte hier bis die Reparatur abgeschlossen ist!","PLAIN"]};
titleText["Die Karre fährt wieder.","PLAIN"];
_nearestVehicle setdamage 0;
life_cash = life_cash - _price;
[] call life_fnc_virt_update;