/*
	File: fn_copSiren.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the cop siren sound for other players
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_suv = typeOf _vehicle;

if(isNull _vehicle) exitWith {};
if(_suv != "C_SUV_01_F") exitWith {};
if(isNil {_vehicle getVariable "siren"}) exitWith {};

while {true} do
{
	if(!(_vehicle getVariable "siren")) exitWith {};
	if(count (crew (_vehicle)) == 0) then {_vehicle setVariable["siren",false,true]};
	if(!alive _vehicle) exitWith {};
	if(isNull _vehicle) exitWith {};
	_vehicle say3D "MedicSiren";
	sleep 4.3;
	if(!(_vehicle getVariable "siren")) exitWith {};
};