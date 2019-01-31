# Military-Drugs-Check-Point
epoch 1.6.2

This one is used to create a police/military check point. If officers catch you with itemkilohemp (drugs) in your inventory they gonna remove it.

***Note: you gonna need create a map building in arma2 editor 3d for it and get your own coords.

1-Put the script into mpmissions\your instance\scripts\
2-in mission.sqm (into class sensor) paste:

```ruby
class Item Your item Value Here
        {
            position[]={Your Own coords here};
            a=30;
            b=30;
            activationBy="ANY";
            repeating=1;
            interruptable=1;
            age="UNKNOWN";
            name="policezone";
            expCond="(vehicle player) in thislist;";
            expActiv="titleText [""Warning Police Check Control"", ""PLAIN DOWN""];policezone = [] execVM ""scripts\police.sqf"";";
            expDesactiv="terminate policezone; titleText [""Leaving Police Check Control"", ""PLAIN DOWN""];";
            class Effects
            {
            };
        };
```

Heres an example to how to do it.

Vanilla class sensor:
```ruby
class Sensors
	{
		items=7;
#define TRGDEF a=100;b=100;activationBy="WEST";repeating=1;interruptable=1;age="UNKNOWN";class Effects{};
		class Item0
		{
			position[]={6325,304,7807};
			TRGDEF
			name="zonestary";
			expCond="(player distance zonestary) < 100;";
			expActiv="[""trader city Stary"",true,""enter""] call player_traderCity;";
			expDesactiv="[""trader city Stary"",true,""leave""] call player_traderCity;";
		};
		class Item1
		{
			position[]={4063,365,11664};
			TRGDEF
			name="zonebash";
			expCond="(player distance zonebash) < 100;";
			expActiv="[""trader city Bash"",true,""enter""] call player_traderCity;";
			expDesactiv="[""trader city Bash"",true,""leave""] call player_traderCity;";
		};
		class Item2
		{
			position[]={11447,317,11364};
			TRGDEF
			name="zoneklen";
			expCond="(player distance zoneklen) < 100;";
			expActiv="[""trader city Klen"",true,""enter""] call player_traderCity;";
			expDesactiv="[""trader city Klen"",true,""leave""] call player_traderCity;";
		};
		class Item3
		{
			position[]={1606,289,7803};
			TRGDEF
			name="zonebandit";
			expCond="(player distance zonebandit) < 100;";
			expActiv="[""Bandit Trader"",false,""enter""] call player_traderCity;";
			expDesactiv="[""Bandit Trader"",false,""leave""] call player_traderCity;";
		};
		class Item4
		{
			position[]={12944,210,12766};
			TRGDEF
			name="zonehero";
			expCond="(player distance zonehero) < 100;";
			expActiv="[""Hero Trader"",false,""enter""] call player_traderCity;";
			expDesactiv="[""Hero Trader"",false,""leave""] call player_traderCity;";
		};
		class Item5
		{
			position[]={12060,158,12638}; 
			TRGDEF
			name="zoneaircraft";
			expCond="(player distance zoneaircraft) < 100;";
			expActiv="[""Aircraft Trader"",false,""enter""] call player_traderCity;";
			expDesactiv="[""Aircraft Trader"",false,""leave""] call player_traderCity;";
		};
		class Item6
		{
			position[]={4544.33,0.00143433,4374.43};
			TRGDEF
			name="zoneaircraft";
			expCond="(player distance zoneaircraft) < 100;";
			expActiv="[""Kozlovka Trader"",true,""enter""] call player_traderCity;";
			expDesactiv="[""Kozlovka Trader"",false,""leave""] call player_traderCity;";
		};
	};
  ```
  Modify class sensor:
  
  ```ruby
  class Sensors
	{
		items=8;//Modify here.. rise the ammount per 1.
#define TRGDEF a=100;b=100;activationBy="WEST";repeating=1;interruptable=1;age="UNKNOWN";class Effects{};
		class Item0
		{
			position[]={6325,304,7807};
			TRGDEF
			name="zonestary";
			expCond="(player distance zonestary) < 100;";
			expActiv="[""trader city Stary"",true,""enter""] call player_traderCity;";
			expDesactiv="[""trader city Stary"",true,""leave""] call player_traderCity;";
		};
		class Item1
		{
			position[]={4063,365,11664};
			TRGDEF
			name="zonebash";
			expCond="(player distance zonebash) < 100;";
			expActiv="[""trader city Bash"",true,""enter""] call player_traderCity;";
			expDesactiv="[""trader city Bash"",true,""leave""] call player_traderCity;";
		};
		class Item2
		{
			position[]={11447,317,11364};
			TRGDEF
			name="zoneklen";
			expCond="(player distance zoneklen) < 100;";
			expActiv="[""trader city Klen"",true,""enter""] call player_traderCity;";
			expDesactiv="[""trader city Klen"",true,""leave""] call player_traderCity;";
		};
		class Item3
		{
			position[]={1606,289,7803};
			TRGDEF
			name="zonebandit";
			expCond="(player distance zonebandit) < 100;";
			expActiv="[""Bandit Trader"",false,""enter""] call player_traderCity;";
			expDesactiv="[""Bandit Trader"",false,""leave""] call player_traderCity;";
		};
		class Item4
		{
			position[]={12944,210,12766};
			TRGDEF
			name="zonehero";
			expCond="(player distance zonehero) < 100;";
			expActiv="[""Hero Trader"",false,""enter""] call player_traderCity;";
			expDesactiv="[""Hero Trader"",false,""leave""] call player_traderCity;";
		};
		class Item5
		{
			position[]={12060,158,12638}; 
			TRGDEF
			name="zoneaircraft";
			expCond="(player distance zoneaircraft) < 100;";
			expActiv="[""Aircraft Trader"",false,""enter""] call player_traderCity;";
			expDesactiv="[""Aircraft Trader"",false,""leave""] call player_traderCity;";
		};
		class Item6
		{
			position[]={4544.33,0.00143433,4374.43};
			TRGDEF
			name="zoneaircraft";
			expCond="(player distance zoneaircraft) < 100;";
			expActiv="[""Kozlovka Trader"",true,""enter""] call player_traderCity;";
			expDesactiv="[""Kozlovka Trader"",false,""leave""] call player_traderCity;";
		};
		class Item7 //Modify here
        {
            position[]={Your Own coords here};//Put your coords. Remember if u have [0,3,5] you need change by [0,5,3]
            a=30;
            b=30;
            activationBy="ANY";
            repeating=1;
            interruptable=1;
            age="UNKNOWN";
            name="policezone";
            expCond="(vehicle player) in thislist;";
            expActiv="titleText [""Warning Police Check Control"", ""PLAIN DOWN""];policezone = [] execVM ""scripts\police.sqf"";";
            expDesactiv="terminate policezone; titleText [""Leaving Police Check Control"", ""PLAIN DOWN""];";
            class Effects
            {
            };
        };
	};
  ```
  
