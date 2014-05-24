/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
//default Tonic gear
removeAllContainers player;
removeAllWeapons player;
//player addUniform "U_Rangemaster";
//player addItem "FirstAidKit";
//player addItem "FirstAidKit";
//player addItem "FirstAidKit";
//player addItem "FirstAidKit";
//player addItem "FirstAidKit";
removeGoggles player;
removeHeadGear player;
//default gear END
//FXE GEAR
player addUniform "U_I_HeliPilotCoveralls";
player addHeadGear "H_Cap_red";
//player addBackpack "B_FieldPack_ocamo_Medic";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
if(hmd player != "") then {
	player unlinkItem (hmd player);
};
player setObjectTextureGlobal [0,"fxe\textures\emt_skin.jpg"];