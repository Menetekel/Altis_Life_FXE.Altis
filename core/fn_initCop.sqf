#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};
//Ordnungsamt None-Whitelisted Slots
if(!(str(player) in ["cop_6","cop_16","cop_17","cop_18","cop_13"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

private["_getRank"];
_getRank = switch (__GETC__(life_coplevel)) do {case 1: {1}; case 2: {2}; case 3: {3}; case 4: {4}; case 5: {5}; case 6: {6}; case 7: {7}; case 8: {8}; default {0};};
player setVariable["coplevel",_getRank,TRUE];
//Texture override
/*
[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_Rangemaster"};
player setObjectTextureGlobal [0,"fxe\textures\cop0_shirt.jpg"];
waitUntil {uniform player != "U_Rangemaster"};
};
};*/
0 spawn {
	private ["_cont"];
	_cont = objNull;

	waitUntil {
		waitUntil {uniformContainer player != _cont};
		_cont = uniformContainer player;

		if(uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal [0, (switch (__GETC__(life_coplevel)) do {
					case 0: {"fxe\textures\cop0_shirt.jpg"};
					case 1: {"textures\Private.jpg"};
					case 2: {"textures\SeniorPatrol.jpg"};
					case 3: {"textures\Sergeant.jpg"};
					case 4: {"textures\Swat.jpg"};
					case 5: {"textures\Lieutenant.jpg"};
					case 6: {"textures\Captain.jpg"};
					case 7: {"textures\Chief.jpg"};
					case 8: {"textures\Chief.jpg"};
					default {"fxe\textures\cop0_shirt.jpg"};
				})];
		};

		false;
	};
};