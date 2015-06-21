#include "macro.sqf"
private ["_weapon", "_ret", "_weaponcfg", "_muzzles"];
_weapon = _this;
_ret = [];
if(_weapon != "") then {
	_weaponcfg = (configFile >> "cfgWeapons" >> _weapon);
	_muzzles = getArray (_weaponcfg >> "muzzles");
	{
		if(_x == "this") then {
			_ret set [count _ret, getArray (_weaponcfg >> "magazines")];
		} else {
			_ret set [count _ret, getArray (_weaponcfg >> _x >> "magazines")];
		};
	} forEach _muzzles;
};
_ret
