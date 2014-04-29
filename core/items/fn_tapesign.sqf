/*
	File: fn_tapesign.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates a spike strip and preps it.
*/
private["_position","_tapesign"];
_tapesign = "TapeSign_F" createVehicle [0,0,0];
_tapesign attachTo[player,[0,5.5,0]];
_tapesign setDir 90;
_tapesign setVariable["item","tapedeployed",true];

life_action_tapesignDeploy = player addAction["Plaziere Flatterband",{if(!isNull life_tapesign) then {detach life_tapesign; life_tapesign = ObjNull;}; player removeAction life_action_tapesignDeploy; life_action_tapesignDeploy = nil;},"",999,false,false,"",'!isNull life_tapesign'];
life_tapesign = _tapesign;
waitUntil {isNull life_tapesign};
if(!isNil "life_action_tapesignDeploy") then {player removeAction life_action_tapesignDeploy;};
if(isNull _tapesign) exitWith {life_tapesign = ObjNull;};
_tapesign setPos [(getPos _tapesign select 0),(getPos _tapesign select 1),0];
_tapesign setDamage 1;
life_action_packuptapesign = player addAction["Flatterband einpacken",life_fnc_packuptapesign,"",0,false,false,"",
' tapesign = nearestObjects[getPos player,["TapeSign_F"],8] select 0; !isNil "_tapesign" && !isNil {(_tapesign getVariable "item")}'];
[[_tapesign],"TON_fnc_tapesign",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.