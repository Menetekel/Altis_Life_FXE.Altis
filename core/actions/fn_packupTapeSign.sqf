/*
	File: fn_packupSpikes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed roadblock.
*/
private["_tapesign"];
_tapesign = nearestObjects[getPos player,["TapeSign_F"],8] select 0;
if(isNil "_tapesign") exitWith {};

if(([true,"tapesign",1] call life_fnc_handleInv)) then
{
	titleText["Du hast das Flatterband abgebaut","PLAIN"];
	player removeAction life_action_tapesignPickup;
	life_action_tapesignPickup = nil;
	deleteVehicle _tapesign;
};