/*
	File: fn_gatherPeaches.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers apples?
*/
private["_sum"];
_sum = ["peach",3,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Ernte Pfirsiche...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	if(([true,"peach",_sum] call life_fnc_handleInv)) then
	{
		titleText[format["Du hast %1 Pfirsich(e) gesammelt.",_sum],"PLAIN"];
	};
}
	else
{
	hint "Dein Inventar ist voll.";
};

life_action_inUse = false;