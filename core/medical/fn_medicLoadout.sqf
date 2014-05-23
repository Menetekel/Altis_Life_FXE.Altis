/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
player addUniform "U_I_HeliPilotCoveralls";
player addHeadGear "H_Cap_red";
//player addBackpack "B_FieldPack_ocamo_Medic";
//player addBackpack "I_UAV_01_backpack_F";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
//player addItem "O_UAVTerminal"; 
//player addItem "B_UAVTerminal"; 
//player addItem "I_UAVTerminal"; 
//player assignItem "I_UAVTerminal";  
if(hmd player != "") then {
	player unlinkItem (hmd player);
};
player setObjectTextureGlobal [0,"fxe\textures\emt_skin.jpg"];