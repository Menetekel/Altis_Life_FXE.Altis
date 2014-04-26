/*
	File: fn_ticketGive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives a ticket to the targeted player.
*/
private["_val"];
if(isNil {life_ticket_unit}) exitWith {hint "Person zum Strafzettel ist Null"};
if(isNull life_ticket_unit) exitWith {hint "Diesen Strafzettel gibt es nicht."};
_val = ctrlText 2652;
if(!([_val] call fnc_isnumber)) exitWith {hint "Bitte nur Zahlen eingeben"};
if((parseNumber _val) > 100000) exitWith {hint "Strafzettel können maximal €100,000 betragen!"};
[[0,format["%1 stellte einen Strafzettel in Höhe von €%2 für %3 aus.",name player,[(parseNumber _val)] call life_fnc_numberText,name life_ticket_unit]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
[[player,(parseNumber _val)],"life_fnc_ticketPrompt",life_ticket_unit,false] spawn life_fnc_MP;
closeDialog 0;