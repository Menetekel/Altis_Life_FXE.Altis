/*
	File: fn_sirenLights.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Lets play a game! Can you guess what it does? I have faith in you, if you can't
	then you have failed me and therefor I lose all faith in humanity.. No pressure.
*/
private["_vehicle","_class"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_class = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
if(isNull _vehicle) exitWith {}; //Bad entry!
if(!(typeOf _vehicle in ["I_MRAP_03_F","B_MRAP_01_hmg_F","B_APC_Wheeled_01_cannon_F","I_MRAP_03_hmg_F","C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F","C_Hatchback_01_sport_F","B_Heli_Light_01_F","B_Heli_Transport_01_F","I_Heli_light_03_unarmed_F"])) exitWith {}; //Last chance check to prevent something from defying humanity and creating a monster.

_trueorfalse = _vehicle getVariable["lights",FALSE];

//Sidecheck
	if(playerSide == west) then {
		if(_trueorfalse) then {
			_vehicle setVariable["lights",FALSE,TRUE];
		} else {
			_vehicle setVariable["lights",TRUE,TRUE];
			[[_vehicle,0.22],"life_fnc_copLights",true,false] call life_fnc_MP;
		};
	};

	hint format["aktuelles _vehicle: %1 und %2",_vehicle,_this];
	if(playerSide == independent) then {
		if(_trueorfalse) then {
			_vehicle setVariable["lights",FALSE,TRUE];
		} else {
			_vehicle setVariable["lights",TRUE,TRUE];
			[[_vehicle,0.22],"life_fnc_medicLights",true,false] call life_fnc_MP;
		};
	};
	/*
	if(playerSide == independent) then {
		if ((vehicle player) in ["C_SUV_01_F"] then {
			if(_trueorfalse) then {
				_vehicle setVariable["lights",FALSE,TRUE];
			} else {
				_vehicle setVariable["lights",TRUE,TRUE];
				[[_vehicle,0.22],"life_fnc_medicLights",true,false] call life_fnc_MP;
			};
		} else {
			if(_trueorfalse) then {
				_vehicle setVariable["lights",FALSE,TRUE];
			} else {
				_vehicle setVariable["lights",TRUE,TRUE];
				[[_vehicle,0.22],"life_fnc_serviceLights",true,false] call life_fnc_MP;
			};
		};
	};
	*/
	/*
	if((playerSide == independent) && (_vehicle in ["C_SUV_01_F"])) then {
		if(_trueorfalse) then {
			_vehicle setVariable["lights",FALSE,TRUE];
		} else {
			_vehicle setVariable["lights",TRUE,TRUE];
			[[_vehicle,0.22],"life_fnc_medicLights",true,false] call life_fnc_MP;
		};
	};
	if((playerSide == independent) && (_vehicle in ["C_Offroad_01_F"])) then {
		if(_trueorfalse) then {
			_vehicle setVariable["lights",FALSE,TRUE];
		} else {
			_vehicle setVariable["lights",TRUE,TRUE];
			[[_vehicle,0.22],"life_fnc_serviceLights",true,false] call life_fnc_MP;
		};
	};
	*/
_trueorfalse = _vehicle getVariable["lights",FALSE];

if(_trueorfalse) then {
	_vehicle setVariable["lights",FALSE,TRUE];
} else {
	_vehicle setVariable["lights",TRUE,TRUE];
	[[_vehicle,0.22],"life_fnc_copLights",true,false] call life_fnc_MP;
};