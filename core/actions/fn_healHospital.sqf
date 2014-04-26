/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Doesn't matter, will be revised later.
*/
if(life_cash < 50) exitWith {hint "Du hast keine €50 um die Rechnung zu bezahlen."};
titleText["Dr. Bob heilt dich jetzt. Keine Angst!","PLAIN"];
sleep 2;
titleText["Ups. Ich glaube die Nadel sollte da nicht rein.","PLAIN"];
sleep 5;
if(player distance (_this select 0) > 5) exitWith {titleText["Du musst im Umkreis von 5m bleiben damit Dr. Bob dich heilen kann.","PLAIN"]};
titleText["Du bist wieder Gesund!","PLAIN"];
player setdamage 0;
life_cash = life_cash - 50;