/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "Du hast nichts ausgewählt zum entfernen.";};
if(!([_value] call fnc_isnumber)) exitWith {hint "Bitte nur Zahlen eingeben!"};
if(parseNumber(_value) <= 0) exitWith {hint "Du musst eine Anzahl eingeben."};
_ind = [_data,life_illegal_items] call fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Das ist ein Illegales Item und es sind Polizisten in der Nähe. Du kannst die Beweise nicht entsorgen.","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Du kannst kein Item entfernen wenn du im Fahrzeug sitzt","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "du kannst die gewünschte Menge nicht entfernen. Vielleicht hast du nicht soviel?"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Du hast erfolgreich %1 %2 entfernt.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;