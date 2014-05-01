/*
	File: fn_repairshop.sqf
	Author: LR copied mostly from  Bryan "Tonic" Boardwine
	
	Description:
	Sollte das Auto reparieren. 
*/
private["_unit","_price","_nearestvehicle"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
//if(isNull _unit OR !isPlayer _unit) exitWith { hint "no Unit"};
_price = 500;
if(life_cash < _price) exitWith {hint "Du hast keine €%1 um die Rechnung zu bezahlen.",[_price]};
_nearestVehicle = nearestObjects[getPosATL player,["Car","Ship","Submarine","Air"],15] select 0;
if(isNil "_nearestVehicle") exitWith {hint "Es ist kein Auto in der Nähe.."};
titleText["Dein Auto wird jetzt repariert","PLAIN"];
sleep 2;
titleText["Hmm ... ja Moment.","PLAIN"];
sleep 5;
if(player distance (_this select 0) > 5) exitWith {titleText["Bitte warte hier bis die Reparatur abgeschlossen ist!","PLAIN"]};
titleText["Die Karre fährt wieder.","PLAIN"];
if(!local _nearestVehicle) then
	{
		[{_nearestVehicle setFuel 1;},"BIS_fnc_spawn",_nearestVehicle,false] spawn life_fnc_MP;
	}
		else
	{
		_nearestVehicle setFuel 1;
	};
_nearestVehicle setdamage 0;
life_cash = life_cash - _price;