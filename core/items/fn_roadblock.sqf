/*
	File: fn_roadblock.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates a spike strip and preps it.
*/
private["_position","_roadblock"];
_roadblock = "RoadBarrier_F" createVehicle [0,0,0];
_roadblock attachTo[player,[0,5.5,0]];
_roadblock setDir 90;
_roadblock setVariable["item","blockdeployed",true];

life_action_roadblockDeploy = player addAction["Place Roadblock",{if(!isNull life_roadblock) then {detach life_roadblock; life_roadblock = ObjNull;}; player removeAction life_action_roadblockDeploy; life_action_roadblockDeploy = nil;},"",999,false,false,"",'!isNull life_roadblock'];
life_roadblock = _roadblock;
waitUntil {isNull life_roadblock};
if(!isNil "life_action_roadblockDeploy") then {player removeAction life_action_roadblockDeploy;};
if(isNull _roadblock) exitWith {life_roadblock = ObjNull;};
_roadblock setPos [(getPos _roadblock select 0),(getPos _roadblock select 1),0];
_roadblock setDamage 1;
life_action_packuproadblock = player addAction["Roadblock einpacken",life_fnc_packuproadblock,"",0,false,false,"",
' roadblock = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_roadblock" && !isNil {(_roadblock getVariable "item")}'];
[[_roadblock],"TON_fnc_roadblock",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.