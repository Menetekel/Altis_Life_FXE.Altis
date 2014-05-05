/*
	File: fn_serviceTruck.sqf
	Author: Bryan "Tonic" Boardwine modified by starfish und LR
	
	Description:
	Main functionality for the service truck.
	*Needs to be revised for new system and flow*
*/
private["_nearby","_vehicle","_vehicleclass","_name","_offroad","_servicet","_anzahl","_test","_trucks"];
_trucks =
	[
		["I_Truck_02_transport_F"],
		["I_Truck_02_covered_F"],
		["O_Truck_03_transport_F"],
		["O_Truck_03_covered_F"],
		["B_Truck_01_mover_F"],
		["B_Truck_01_transport_F"],
		["B_Truck_01_covered_F"],
		["C_Van_01_fuel_F"],
		["I_Truck_02_fuel_F"],
		["O_Truck_03_fuel_F"],
		["B_Truck_01_fuel_F"],
		["B_Truck_01_mover_F"]
	];
_test = "";
_nearby = nearestObjects[(vehicle player),["Car"],15];
_vehicle = _nearby select 0;
//_vehicleClass = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "vehicleClass");
if (typeOf _vehicle in _trucks) exitWith {hint "Du kannst mit Trucks nichts anfangen!"};
if(count (_nearby) > 1) then
{
	_vehicle = _nearby select 0;
	_offroad = _nearby select 1;
	_anzahl = count _nearby;
	for "_i" from  0 to _anzahl - 1  do 
	{
	_offroad = _nearby select _i;
	_servicet = getText(configFile >> "CfgVehicles" >> (typeOf _offroad) >> "displayName");
	if (_servicet == "Offroad") then { _test = "istda"};
	};
	_name = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
	
	if (vehicle player != player) exitWith {hint "Du musst außerhalb des Fahrzeugs sein!"};
//	hint format["nearby?= %1",_servicet];
	if (_test == "istda") then 
	{
	
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
	}
	else 
	{
	hint format["Kein Servicetruck gefunden!"];
	};
}
else
{
hint format["Kein Servicetruck gefunden! Nur ein Auto in der Nähe."];
};