/*
	File: fn_flushlight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates a spike strip and preps it.
*/
private["_position","_flushlight"];
_flushlight = "Land_Flush_Light_red_F" createVehicle [0,0,0];
_flushlight attachTo[player,[0,5.5,0]];
_flushlight setDir 90;
_flushlight setVariable["item","lighteployed",true];

life_action_flushlightDeploy = player addAction["Place Spike Strip",{if(!isNull life_flushlight) then {detach life_flushlight; life_flushlight = ObjNull;}; player removeAction life_action_flushlightDeploy; life_action_flushlightDeploy = nil;},"",999,false,false,"",'!isNull life_flushlight'];
life_flushlight = _flushlight;
waitUntil {isNull life_flushlight};
if(!isNil "life_action_flushlightDeploy") then {player removeAction life_action_flushlightDeploy;};
if(isNull _flushlight) exitWith {life_flushlight = ObjNull;};
_flushlight setPos [(getPos _flushlight select 0),(getPos _flushlight select 1),0];
_flushlight setDamage 1;
[[_flushlight],"TON_fnc_flushlight",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.