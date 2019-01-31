//drugs check point by juandayz


[format["<t size='1.2' color='#D01000'>WARNING %1</t><br/><t size='0.9'>POLICE GONNA REMOVE ALL YOUR DRUGS FROM YOUR INVENTORY</t>",(name player)],0,0,5,5] spawn BIS_fnc_dynamicText;
while {true} do {
		private["_vehicle", "_curspeed", "_vel", "_dir", "_speed","_hempqty"];
        //waitUntil {vehicle player != player and!((vehicle player) isKindOf 'Air')};
		
		if (vehicle player != player and!((vehicle player) isKindOf 'Air')) then {
        _vehicle = vehicle player;
        _curspeed = speed _vehicle;
        if (_curspeed > 30) then {
            _vel = velocity _vehicle;
            _dir = direction _vehicle;
            _speed = _curspeed - 30;
            _vehicle setVelocity[(_vel select 0) - ((sin _dir) * _speed), (_vel select 1) - ((cos _dir) * _speed), (_vel select 2)];
        };
		_hempqty = {_x == "ItemKiloHemp"} count magazines player;
		if (_hempqty > 0) exitWith{
		{player removeMagazine "ItemKiloHemp"} count (magazines player);
		systemchat "POLICE CATCH YOU WITH DRUGS AND REMOVE IT FROM YOUR POKETS";
		}; 
       
		}else{
		 _hempqty = {_x == "ItemKiloHemp"} count magazines player;
		if (_hempqty > 0) exitWith{
		{player removeMagazine "ItemKiloHemp"} count (magazines player);
		systemchat "POLICE CATCH YOU WITH DRUGS AND REMOVE IT FROM YOUR POKETS";
		}; 
		};
		 sleep 0.1;
    };