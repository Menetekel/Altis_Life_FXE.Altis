/*
	File: fnc_Carinspect.sqf
	Author: Little Rock (FXE)
	
Noch Ausgabe einfärben und Truckarray überprüfen und raus
*/
private["_vehicle","_parts","_part","_damage","_anzahl","_count","_engine","_fuel","_wheel","_wheeldamage","_trucks","_hemtt"];
_trucks = ["I_Truck_02_transport_F","I_Truck_02_covered_F","O_Truck_03_transport_F","O_Truck_03_covered_F","C_Van_01_fuel_F","I_Truck_02_fuel_F","O_Truck_03_fuel_F"];
_hemtt = ["B_Truck_01_mover_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_fuel_F"];
_part=[];
_parts=0;
_wheeldamage=[0,""];
_vehicle = cursortarget;
_anzahl = 4;
//_damage=0;
if(isNull _vehicle) exitWith {}; //Bad vehicle type
if(( (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {hint "Das ist kein Auto Bro!"};
if ((typeOf _vehicle) in _trucks) then {_anzahl = 6};
if ((typeOf _vehicle) in _hemtt) then {_anzahl = 8};
_wheel = ["HitLFWheel","HitLF2Wheel","HitLMWheel","HitLBWheel","HitRFWheel","HitRF2Wheel","HitRMWheel","HitRBWheel"];
_count = count _wheel;
for "_i" from  0 to _count - 1  do
{
_part = _wheel select _i;
_damage = _vehicle getHitPointDamage _part;	
if (!isNIl "_damage") then 
	{
	_wheeldamage set [_i,_damage]; 
	};
};
_damage = _vehicle getHitPointDamage ("HitLWheel");
_engine = _vehicle getHitPointDamage "hitEngine";
_fuel =_vehicle getHitPointDamage "hitFuel";
_count = count _wheeldamage;
If (_anzahl == 4) then
{
hint  format["Reifen: \n Vorne links: %1 \n Hinten links: %2 \n Vorne rechts: %3 \n Hinten rechts:%4\n Rest der Karre \n Motorschaden: %5 \n Fueltank: %6", _wheeldamage select 0,_wheeldamage select 1,_wheeldamage select 4,_wheeldamage select 5,_engine,_fuel];
};
If (_anzahl == 6) then
{
hint  format["Reifen%9: \n Vorne links: %1 \n Mitte links:%2\n Hinten links: %3 \n Vorne rechts: %4\n Mitte rechts: %5 \n Hinten rechts:%6\n Rest der Karre \n Motorschaden: %7 \n Fueltank: %8", _wheeldamage select 0,_wheeldamage select 2,_wheeldamage select 1,_wheeldamage select 4,_wheeldamage select 6,_wheeldamage select 5,_engine,_fuel];
};
If (_anzahl == 8) then
{
hint  format["Reifen: \n Vorne links: %1 \n Zweiter links:%2\n DritterLinks: %3 \n Hinten links: %4 \n Vorne rechts: %5\n Zweiter rechts: %6 \nDritter Rechts:%7\n Hinten rechts:%8\n Rest der Karre \n Motorschaden: %9 \n Fueltank: %10", _wheeldamage select 0,_wheeldamage select 1,_wheeldamage select 2,_wheeldamage select 3,_wheeldamage select 4,_wheeldamage select 5,_wheeldamage select 6,_wheeldamage select 7,_engine,_fuel];
};