## MacroFunctions

Simple wow addon (1.12) that adds some functions for macro usage.


### Functions added by addon

```lua
-- Returns a boolean on whether the provided 'unit' has a buff by name.
-- Parameters:
-- unit(string): the unit name e.g. "player", "target"
-- buffName(string): the name or part of the name of the buff to look up e.g. "WordShield"
UnitHasBuff(unit,buffName)


-- Returns a boolean on whether the provided 'unit' has a debuff by name.
-- Parameters:
-- unit(string): the unit name e.g. "player", "target"
-- debuffName(string): the name or part of the name of the debuff to look up e.g. "WordShield"
UnitHasDebuff(unit,debuffName)


-- Prints to the console the names of all the buffs of the target. 
-- Helps you find the actual name of a buff (may not be what you see in the tooltip)
-- Parameters:
-- unit(string): the unit name e.g. "player", "target"
PrintUnitBuffs(unit)


-- Prints to the console the names of all the debuffs of the target. 
-- Helps you find the actual name of a debuff (may not be what you see in the tooltip)
-- Parameters:
-- unit(string): the unit name e.g. "player", "target"
PrintUnitDebuffs(unit)


```

### Examples of usage
```lua

--(Priest macro) This will cast power word shield on the player only if it not already on them.
/script if(not UnitHasBuff("player","WordS")) then CastSpellByName("Power Word: Shield"); end;


```

### Installation
* Download from [here](https://github.com/stavroskasidis/MacroFunctions-VanillaWow/releases)
* Extract and copy folder "MacroFunctions" in your addons folder (Interface\AddOns)
