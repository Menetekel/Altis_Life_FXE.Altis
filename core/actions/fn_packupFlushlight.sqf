/*
	File: fn_packupSpikes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed roadblock.
*/
private["_flushlight"];
_flushlight = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0;
if(isNil "_flushlight") exitWith {};

if(([true,"flushlight",1] call life_fnc_handleInv)) then
{
	titleText["Du hast den Absperrband abgebaut","PLAIN"];
	player removeAction life_action_flushlightPickup;
	life_action_flushlightPickup = nil;
	deleteVehicle _flushlight;
};