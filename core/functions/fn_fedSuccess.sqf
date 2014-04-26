/*
	File: fn_fedSuccess.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Ugh coming up with a name for it was stupid but whatever.
	If the robbery was successful on the Federal reserve then punish
	everyone and take some money.

	Support for Bank Insurance is there.
*/
private["_funds"];
_funds = [_this,0,-1,[0]] call BIS_fnc_param;
if(_funds == -1) exitWith {};
if(!life_use_atm) exitWith {};
sleep 45;

if(_funds > life_atmcash) then
{
	hint "Bei einem Bankraub auf die Zentralbank wurde dein Geld gestohlen.\n\nKaufe eine Versicherung das dies nicht mehr passiert.";
	life_atmcash = 0;
}
	else
{
	if(life_has_insurance) then
	{
		hint "Der Jüngste Überall auf die Zentralbank hat gezeigt das es wichtig ist eine Versicherung zu haben. \n\Beim letzten Raub wurde jedoch festgestellt das deine Versicherung abgelaufen ist. Gehe zu einem Geldautomat und erneuere deine Versicherung!";
		life_has_insurance = false;
	}
		else
	{
		hint format["Bei einem Bankraub auf die Zentralbank wurde von deinem konto €%1 gestohlen.\n\nKaufe eine Versicherung das dies nicht mehr passiert.",[_funds] call life_fnc_numberText];
		life_atmcash = life_atmcash - _funds;
	};
};