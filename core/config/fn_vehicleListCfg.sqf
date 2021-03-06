#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return","_copcars","_copair","_copboat","_civcar","_civtrucks","_rebcar","_mediccar","_civship","_civheli"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];

//COPCARS ARRAY
_copcars = [];
		if(__GETC__(life_coplevel) >= 0) then
			{
			_copcars set[count _copcars, ["C_Hatchback_01_F",1000]];
			};
		if(__GETC__(life_coplevel) >= 1) then
			{
			_copcars set[count _copcars, ["C_Offroad_01_F",2000]];
			};
		if(__GETC__(life_coplevel) > 1) then
			{
			_copcars set[count _copcars, ["C_SUV_01_F",3000]];
			};
		if(__GETC__(life_coplevel) > 2) then
			{
			_copcars set[count _copcars, ["C_Hatchback_01_sport_F",4000]];
			};
		if(__GETC__(life_coplevel) > 3) then
			{
			_copcars set[count _copcars, ["B_MRAP_01_F",5000]];
			};
		if(__GETC__(life_coplevel) > 4) then
			{
			_copcars set[count _copcars, ["I_MRAP_03_F",6000]];
			};
		if(__GETC__(life_coplevel) > 5) then
			{
			_copcars set[count _copcars, ["B_MRAP_01_hmg_F",7000]];
			};
//COPCARS ARRAY

//Copboat Array
_copboat =[];
		if(__GETC__(life_coplevel) > 0) then
		{
		_copboat set[count _copboat,	["B_Boat_Transport_01_F",5000]];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
		_copboat set[count _copboat,	["C_Boat_Civil_01_police_F",20000]];
		};
		
		if(__GETC__(life_coplevel) > 6) then
		{
		_copboat set[count _copboat,	["B_Boat_Armed_01_minigun_F",50000]];
		_copboat set[count _copboat,	["B_SDV_01_F",75000]];
		};	

//cop airshop
_copair = [];
		if(__GETC__(life_coplevel) > 0) then
		{
			_copair set[count _copair,	["B_Heli_Light_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_copair set[count _copair,	["B_Heli_Transport_01_F",50000]];
		};
		
//civilian vehicles
_civcar =
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];

//rebel vehicles
_rebcar =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",350000],
			["B_Heli_Light_01_F",525000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,	["B_G_Offroad_01_armed_F",750000]];
		};	

//civilian trucks 
_civtrucks =
	[
		["C_Van_01_transport_F",10000],
		["C_Van_01_box_F",20000],
		["I_Truck_02_transport_F",40000],
		["I_Truck_02_covered_F",50000],
		["O_Truck_03_transport_F",70000],
		["O_Truck_03_covered_F",80000],
		["B_Truck_01_mover_F",100000],
		["B_Truck_01_transport_F",110000],
		["B_Truck_01_covered_F",120000],
		["C_Van_01_fuel_F",200000],
		["I_Truck_02_fuel_F",220000],
		["O_Truck_03_fuel_F",240000],
		["B_Truck_01_fuel_F",260000]
	];

//medic vehicles
_mediccars =
		[
			["C_SUV_01_F",2500],
			["C_Offroad_01_F",7500],
			["B_Truck_01_mover_F",22500]
		];

_civship =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];

_civheli =
		[
			["B_Heli_Light_01_F",453000],
			["O_Heli_Light_02_unarmed_F",950000]
		];
switch (_shop) do
{
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car_1":
	{
		_return = _civcar;		
	}; 
	
	case "civ_car_2":
	{
		_return = _civcar;		
	};
	
	case "civ_car_3":
	{
		_return = _civcar;		
	}; 
	
	case "civ_car_4":
	{
		_return = _civcar;		
	}; 
	
	case "donator_1":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000]
		];

		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",600000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
		};
	};
			
	case "civ_servt_1":
	{
		_return =
		[
			["C_Offroad_01_F",15000] //Service Truck
		];
	};
	
	case "civ_truck_1":
	{
		_return = _civtrucks;
	};
	
	case "civ_truck_2":
	{
		_return = _civtrucks;
	};

	case "civ_truck_3":
	{
		_return = _civtrucks;
	};
	
	case "reb_v_1":
	{
		_return = _rebcar;
	};
	
	case "reb_v_2":
	{
		_return = _rebcar;
		
	};
			
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",13000]
		];
	};
	
	case "reb_car2":
	{
		_return set[count _return,
		["B_Quadbike_01_F",2500]];
		_return set[count _return,
		["C_Offroad_01_F",9000]];
		_return set[count _return,
		["O_MRAP_02_F",350000]];
	};
	
	case "reb_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",275000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",350000]];
	};
	
	case "cop_car_1":
	{
	_return = _copcars;
	};
	
	case "cop_car_2":
	{
	_return = _copcars;
	};
	
	case "cop_car_3":
	{
	_return = _copcars;
	};
	
	case "cop_car_5":
	{
	_return = _copcars;
	};
	
	case "fed_car":
	{
		_return set[count _return,
		["B_Quadbike_01_F",0]];
		_return set[count _return,
		["C_Offroad_01_F",0]];
		_return set[count _return,
		["B_MRAP_01_F",0]];
		_return set[count _return,
		["I_MRAP_03_F",0]];
		_return set[count _return,
		["I_Truck_02_covered_F",0]];
		_return set[count _return,
		["I_Truck_02_transport_F",0]];
		_return set[count _return,
		["B_Truck_01_covered_F",0]];
		_return set[count _return,
		["B_Truck_01_transport_F",0]];
	};
	
	case "fed_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",0]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",0]];
		_return set[count _return,
		["B_Heli_Transport_01_F",0]];
		_return set[count _return,
		["I_Heli_Transport_02_F",0]];
	};
	
	case "civ_air_1":
	{
		_return = _civheli;
	};
	
	case "civ_air_2":
	{
		_return = _civheli;
	};
	
	case "cop_air_1":
	{
	_return = _copair;
	};
	
	case "cop_air_2":
	{
	_return = _copair;
	};
	
	case "civ_ship_1":
	{
		_return = _civship;
	};
	
	case "civ_ship_2":
	{
		_return = _civship;
	};
	
	case "civ_ship_3":
	{
		_return = _civship;
	};
	
	case "cop_ship_1":
	{
	_return = _copboat;
	};
	
	case "donator_heli":
	{
		_return =
		[
			["B_Heli_Light_01_F",100000],
			["O_Heli_Light_02_unarmed_F",175000],
			["I_Heli_Transport_02_F",650000]
		];
	};
	
	case "donator_car":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_Hatchback_01_sport_F",10000],
			["C_SUV_01_F",20000],
			["C_Van_01_fuel_F",7500]
		];
	};
	case "medic_car_1":
	{
		_return = _mediccars;
	};
	case "medic_car_2":
	{
		_return = _mediccars;
	};
	case "medic_car_3":
	{
		_return = _mediccars;
	};
};

_return;