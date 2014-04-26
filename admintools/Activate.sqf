waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561197960341580","76561198048827784","76561198059962763","76561198034118369","76561198015562994","76561197985146820"]) then {
	sleep 30;
	player addaction [("<t color=""#0074E8"">" + ("Tools Menu") +"</t>"),"admintools\Eexcute.sqf","",5,false,true,"",""];
};
