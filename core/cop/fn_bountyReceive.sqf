/*
	File: fn_bountyReceive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Notifies the player he has received a bounty and gives him the cash.
*/
private["_val","_total"];
_val = [_this,0,"",["",0]] call BIS_fnc_param;
_total = [_this,1,"",["",0]] call BIS_fnc_param;

if(_val == _total) then
{
	titleText[format["Du hast ein Kopfgeld in H�he von: �%1 erhalten f�r die Festnahme eines Kriminellen.",[_val] call life_fnc_numberText],"PLAIN"];
}
	else
{
	titleText[format["Du hast ein Kofgeld in H�he von: �%1 erhalten f�r die t�tung eines Kriminellen. H�ttest du in festgenommen h�ttest du �%2 bekommen.",[_val] call life_fnc_numberText,[_total] call life_fnc_numberText],"PLAIN"];
};

life_atmcash = life_atmcash + _val;