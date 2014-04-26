/*
	File: fn_robBankAction.sqf
	
	Description:
	Who cares, getting scrapped.
*/
private["_funds"];
bank_query = player;
bank_robber = bank_robber + [player];
publicVariableServer "bank_query";
waitUntil {!isNil {bank_query_funds}};
_funds = bank_query_funds;
if(_funds < 0) exitWith
{
	hint "Weil die Bank kürzlich ausgeraubt wurde kann sie ihren Kunden ihr Geld nicht zurück zahlen und ist jetzt pleite.";
};
hint "Versuche den Tresor zu öffnen...";
sleep 1;
bank_query_funds = nil;

[[_funds],"bank_robbery",true,false] spawn life_fnc_MP;