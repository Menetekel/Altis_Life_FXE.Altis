/*
	File: fn_gatherCannabis.sqf
	
	Description:
	Gathers cannabis?
*/
private["_sum"];
_sum = ["cannabis",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Ernte Cannabis...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"cannabis",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast Cannabis gesammelt.","PLAIN"];
	};
};

life_action_inUse = false;