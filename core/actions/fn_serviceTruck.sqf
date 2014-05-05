/*
	File: fn_serviceTruck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for the service truck.
	*Needs to be revised for new system and flow*
*/
private["_nearby","_vehicle","_name","_offroad","_servicet"];
_nearby = nearestObjects[(vehicle player),["Car","Ship","Air"],10];
_offroad = nearestObjects[player,["Car"],10];
if(count (_nearby) > 1) then
{
	_vehicle = _nearby select 0;
	_offroad = _nearby select 1;
	_name = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
	_servicet = getText(configFile >> "CfgVehicles" >> (typeOf _offroad) >> "displayName");
	if (vehicle player != player) exitWith {hint "Du musst außerhalb des Fahrzeugs sein!"};
//	hint format["nearby?= %1",_servicet];
	if (_servicet == "Offroad") then {
		titleText[format["Warte %1 - nicht bewegen...",_name],"PLAIN"];
		titleFadeOut 12;
		sleep 10;
		if((vehicle player) distance _vehicle > 10) exitWith {titleText["Wartung/Betankung fehlgeschlagen.","PLAIN"];};
		titleText[format["Du hast %1 aufgetankt/gewartet.",_name],"PLAIN"];
		if(!local _vehicle) then
		{
			[{_vehicle setFuel 1;},"BIS_fnc_spawn",_vehicle,false] spawn life_fnc_MP;
			[{_vehicle setDamage 0;},"BIS_fnc_spawn",_vehicle,false] spawn life_fnc_MP;
		}
			else
		{
			_vehicle setFuel 1;
			_vehicle setDamage 0;
		};
	};
};