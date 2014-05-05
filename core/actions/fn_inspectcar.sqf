/*
	File: fnc_Carinspect.sqf
	Author: Little Rock (FXE)
	
Noch Ausgabe einfärben und Truckarray überprüfen und raus
*/

private["_vehicle","_parts","_part","_damage","_anzahl","_engine","_fuel","_wheel","_wheeldamage"];
_part=[];
_parts=0;
_wheeldamage=[0,""];
_vehicle = cursortarget;
if(isNull _vehicle) exitWith {}; //Bad vehicle type
_wheel = ["HitLFWheel","HitLF2Wheel","HitRFWheel","HitRF2Wheel"];
_anzahl = count _wheel;
for "_i" from  0 to _anzahl - 1  do
{
_part = _wheel select _i;
_damage = _vehicle getHitPointDamage _part;	
if (!isNIl "_damage") then 
	{
	_wheeldamage set [_i,_damage]; 
	};
};
_engine = _vehicle getHitPointDamage "hitEngine";
_fuel =_vehicle getHitPointDamage "hitFuel";
_parts = count _wheeldamage;
hint  format["Reifen: \n Vorne links: %1 \n Hinten links: %2 \n Vorne rechts: %3 \n Hinten rechts:%4\n Rest der Karre \n Motorschaden: %5 \n Fueltank: %6", _wheeldamage select 0,_wheeldamage select 1,_wheeldamage select 2,_wheeldamage select 3,_engine,_fuel];
