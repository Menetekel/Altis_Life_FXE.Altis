/*
	File: fn_clothingConfig.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config for clothing shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blau",250],
		["U_C_Poloshirt_burgundy","Poloshirt Burgunder",275],
		["U_C_Poloshirt_redwhite","Poloshirt Rot/Weiß",150],
		["U_C_Poloshirt_salmon","Poloshirt Lachs",175],
		["U_C_Poloshirt_stripped","Poloshirt Gestreift",125],
		["U_C_Poloshirt_tricolour","Poloshirt Mehrfarbig",350],
		["U_C_Poor_2","Zerlumpte Kleidung",250],
		["U_IG_Guerilla2_2","Grün gestreift & Hose",650],
		["U_IG_Guerilla3_1","Braune Jacke & Hose",735],
		["U_IG_Guerilla2_3","Der Outback Rangler",1200],
		["U_C_HunterBody_grn","Der Hunters Look",1500],
		["U_C_WorkerCoveralls","Mechanik Overalls",2500],
		["U_OrestesBody","Surferboy",1100]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Tarn Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Grauer Bandanna",150],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","salbei Bandanna",160],
			["H_StrawHat","Strow Fedora",225],
			["H_BandMask_blk","Hut & Bandanna",300]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,0],
			["G_Shades_Blue",nil,0],
			["G_Sport_Blackred",nil,0],
			["G_Sport_Checkered",nil,0],
			["G_Sport_Blackyellow",nil,0],
			["G_Sport_BlackWhite",nil,0],
			["G_Squares",nil,0],
			["G_Lowprofile",nil,0],
			["G_Combat",nil,0]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_PlateCarrierIA1_dgtl",nil,2500],
			["V_PlateCarrierIA2_dgtl",nil,1500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_Kitbag_mcamo",nil,1250],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,5000]
		];
	};
};