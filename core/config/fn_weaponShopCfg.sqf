﻿#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		if (__GETC__(life_coplevel) == 0) then
		{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Basic Cop Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50]
					]
				];
			};	
		};
		};
		if (__GETC__(life_coplevel) == 1)  then
		{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Cop-Shop Lvl 1",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};	
		};
		};
		if (__GETC__(life_coplevel) == 2)  then
		{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Cop-Shop Lvl 1",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};	
		};
		};
		if (__GETC__(life_coplevel) == 3)  then
		{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Cop-Shop Lvl 2",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["SMG_02_ACO_F",nil,15000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};	
		};
		};
		if (__GETC__(life_coplevel) == 4)  then
		{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Cop-Shop Lvl 2",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["SMG_02_ACO_F",nil,15000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};	
		};
		};
		if (__GETC__(life_coplevel) == 5) then
		{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Cop-Shop Lvl 3",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["SMG_02_ACO_F",nil,15000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["MineDetector",nil,3000],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,250],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};	
		};
		};
		if (__GETC__(life_coplevel) == 6) then
		{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Cop-Shop Lvl 3",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_sdar_F","Taser Rifle",20000],
						["SMG_02_ACO_F",nil,15000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["MineDetector",nil,3000],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,250],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};	
		};
		};
		if (__GETC__(life_coplevel) > 6) then
		{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["High-Cop-Shop",
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["SMG_02_ACO_F",nil,15000],
						["launch_B_Titan_short_F",nil,65000],
						["LMG_Mk200_MRCO_F",nil,185000],
						["srifle_EBR_ARCO_pointer_snds_F",nil,65000],
						["srifle_GM6_SOS_F",nil,225000],
						["Binocular",nil,350],
						["ItemGPS",nil,3000],
						["ToolKit",nil,250],
						["MineDetector",nil,3000],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,7500],
						["NVGoggles",nil,5000],
						["B_UavTerminal",nil,15000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["Titan_AT",nil,5000],
						["200Rnd_65x39_cased_Box",nil,500],
						["20Rnd_762x51_Mag",nil,500],
						["30Rnd_9x21_Mag",nil,250],
						["5Rnd_127x108_Mag",nil,50]
					]
				];
			};
		};//default
		};	// if2
	}; //cop basic
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};		

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 2): {"Du hast nicht den erforderlichen Rang!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["MineDetector",nil,3000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 3): {"Du hast nicht den erforderlichen Rang!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["arifle_MXC_F",nil,30000],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellen-Lizenz!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["launch_RPG32_F",nil,1500000],
						["arifle_MX_SW_F",nil,1850000],
						["arifle_MX_F",nil,650000],
						["arifle_TRG20_F",nil,500000],
						["srifle_LRR_F",nil,2250000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["RPG32_HE_F",nil,75000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,85000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,60000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,50000],
						["7Rnd_408_Mag",nil,150000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide == west): {"Du bist kein Zivilist oder Sanitäter!"};
			case (!license_civ_gun): {"Du hast keine Schusswaffen-Lizenz!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,275],
						["9Rnd_45ACP_Mag",nil,150],
						["6Rnd_45ACP_Cylinder",nil,125],
						["30Rnd_9x21_Mag",nil,350]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Du bist kein Spender!"};
			case (__GETC__(life_donator) == 1):
			{
				["FXE Donator Shop Tier 1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,200],
						["ItemGPS",nil,2500],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["FXE Donator Shop Tier 2",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["arifle_MK20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["NVGoggles",nil,4000],
						["ToolKit",nil,200],
						["ItemGPS",nil,2500],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["FXE Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,4000],
						["ToolKit",nil,200],
						["ItemGPS",nil,2500],
						["FirstAidKit",nil,125],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,350],
				["ItemGPS",nil,3000],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,5000],
				["Chemlight_red",nil,100],
				["Chemlight_yellow",nil,100],
				["Chemlight_green",nil,100],
				["Chemlight_blue",nil,100]
			]
		];
	};
};
