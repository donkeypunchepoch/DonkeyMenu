#include "macro.sqf"
private ["_radio", "_items"];
_radio = call ASORGS_fnc_GetRadio;
_items = (ASORGS_CurrentInventory select GSVI_Items) - [_radio];
ASORGS_CurrentInventory set [GSVI_Items, _items];
ASORGS_WeightChanged = true;