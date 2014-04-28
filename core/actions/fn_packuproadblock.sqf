/*
	File: fn_packupSpikes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed roadblock.
*/
private["_roadblock"];
_roadblock = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_roadblock") exitWith {};

if(([true,"roadblock",1] call life_fnc_handleInv)) then
{
	titleText["Du hast die Straßensperre abgebaut","PLAIN"];
	player removeAction life_action_roadblockPickup;
	life_action_roadblockPickup = nil;
	deleteVehicle _roadblock;
};