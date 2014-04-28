/*
	File: fn_flushlight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates a spike strip and preps it.
*/
private["_position","_flushlight"];
_flushlight = "Land_runway_edgelight_blue_F" createVehicle [0,0,0];
_flushlight attachTo[player,[0,5.5,0]];
_flushlight setDir 90;
_flushlight setVariable["item","lightdeployed",true];

life_action_flushlightDeploy = player addAction["Plaziere Licht",{if(!isNull life_flushlight) then {detach life_flushlight; life_flushlight = ObjNull;}; player removeAction life_action_flushlightDeploy; life_action_flushlightDeploy = nil;},"",999,false,false,"",'!isNull life_flushlight'];
life_flushlight = _flushlight;
waitUntil {isNull life_flushlight};
if(!isNil "life_action_flushlightDeploy") then {player removeAction life_action_flushlightDeploy;};
if(isNull _flushlight) exitWith {life_flushlight = ObjNull;};
_flushlight setPos [(getPos _flushlight select 0),(getPos _flushlight select 1),0];
_flushlight setDamage 1;
life_action_spikeStripPickup = player addAction["Licht einpacken",life_fnc_packupflushlight,"",0,false,false,"",
' flushlight = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_flushlight" && !isNil {(_flushlight getVariable "item")}'];
[[_flushlight],"TON_fnc_flushlight",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.