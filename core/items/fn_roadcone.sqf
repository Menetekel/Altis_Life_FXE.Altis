/*
	File: fn_roadcone.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates a spike strip and preps it.
*/
private["_position","_roadcone"];
_roadcone = "RoadCone_F" createVehicle [0,0,0];
_roadcone attachTo[player,[0,5.5,0]];
_roadcone setDir 90;
_roadcone setVariable["item","conedeployed",true];

life_action_roadconeDeploy = player addAction["Plaziere Kegel",{if(!isNull life_roadcone) then {detach life_roadcone; life_roadcone = ObjNull;}; player removeAction life_action_roadconeDeploy; life_action_roadconeDeploy = nil;},"",999,false,false,"",'!isNull life_roadcone'];
life_roadcone = _roadcone;
waitUntil {isNull life_roadcone};
if(!isNil "life_action_roadconeDeploy") then {player removeAction life_action_roadconeDeploy;};
if(isNull _roadcone) exitWith {life_roadcone = ObjNull;};
_roadcone setPos [(getPos _roadcone select 0),(getPos _roadcone select 1),0];
_roadcone setDamage 1;
life_action_spikeStripPickup = player addAction["Kegel einpacken",life_fnc_packuproadcone,"",0,false,false,"",
' roadcone = nearestObjects[getPos player,["RoadCone_F"],8] select 0; !isNil "_roadcone" && !isNil {(_roadcone getVariable "item")}'];
[[_roadcone],"TON_fnc_roadcone",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.