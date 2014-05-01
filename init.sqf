enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
/*
if(isNull player) then 
{
	if(!X_JIP && !isServer) then
	{
		[] spawn (compile PreprocessFileLineNumbers "core\jip.sqf");
	};
	X_JIP = true;
};
*/
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.3fxe";
/*
if(X_Client) then
{
	[] execVM "core\init.sqf";
};
*/
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
//towing
[] execVM "FXE\tow\init.sqf";
//Init admintools (temporary)
[] execVM "admintools\loop.sqf";
//Disco cleanup
//onPlayerDisconnected { [_id, _name, _uid] call compile preProcessFileLineNumbers "core\functions\fn_onPlayerDisconnect.sqf" };
//FXE Mods
//cruise control
call mod_cruiseControl;

if(!StartProgress) then
{
	[8,true,true,12] execFSM "core\fsm\timeModule.fsm";
	//[8,true,false] execFSM "core\fsm\core_time.fsm";
};
StartProgress = true;