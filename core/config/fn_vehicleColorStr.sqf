/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rot";};
			case 1: {_color = "Gelb";};
			case 2: {_color = "Weiß";};
			case 3: {_color = "Blau";};
			case 4: {_color = "Dunkel rot";};
			case 5: {_color = "Blau/Weiß"};
			case 6: {_color = "Schwarz"};
			case 7: {_color = "Taxi"};
			case 8: {_color = "Autobahnpolizei"};
			case 9: {_color = "Service Truck"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Grün";};
			case 2: {_color = "Blau";};
			case 3: {_color = "Dunkel Blau";};
			case 4: {_color = "Gelb";};
			case 5: {_color = "Weiß"};
			case 6: {_color = "Grau"};
			case 7: {_color = "Schwarz"};
			case 8: {_color = "Ordnungsamt"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rot"};
			case 1: {_color = "Dunkel Blau"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Schwarz / Weiß"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Grün"};
			case 6: {_color = "Polizei"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dunkel Rot";};
			case 1: {_color = "Silber";};
			case 2: {_color = "Orange";};
			case 3: {_color = "Polizei";};
			case 4: {_color = "Sanitäter";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Braun"};
			case 1: {_color = "Wüßte"};
			case 2: {_color = "Schwarz"};
			case 3: {_color = "Blau"};
			case 4: {_color = "Rot"};
			case 5: {_color = "Weiß"};
			case 6: {_color = "Digi Grün"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sheriff"};
			case 1: {_color = "Schwaz"};
			case 2: {_color = "Ziv. Blau"};
			case 3: {_color = "Ziv. Rot"};
			case 4: {_color = "Digi Grün"};
			case 5: {_color = "Blauelinie"};
			case 6: {_color = "Elliptisch"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blau"};
			case 9: {_color = "Speedy Rotelinie"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Wellen Blau"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Polizei"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Weiß / Blau"};
			case 2: {_color = "Digi Grün"};
			case 3: {_color = "Desert Digi"};
		};
	};

//Hunter	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "SEK"};
		};
	};

//FXE Strider
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};

	case "B_Truck_01_mover_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Abschleppwagen"};
		};
	};
};

_color;