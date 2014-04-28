/*
	File: fn_packupSpikes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed roadblock.
*/
private["_roadcone"];
_roadcone = nearestObjects[getPos player,["RoadCone_F"],8] select 0;
if(isNil "_roadcone") exitWith {};

if(([true,"kegel",1] call life_fnc_handleInv)) then
{
	titleText["Du hast den Pylon abgebaut","PLAIN"];
	player removeAction life_action_roadconePickup;
	life_action_roadconePickup = nil;
	deleteVehicle _roadcone;
};