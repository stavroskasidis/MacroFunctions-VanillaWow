## MacroFunctions

Simple addon for vanilla wow (1.12) that adds some functions for macro usage.


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

-- Priest macro: This will cast power word shield on the player only if it not already on them.
/script if(not UnitHasBuff("player","WordS")) then CastSpellByName("Power Word: Shield"); end;
```

```lua
-- Hunter "melee" macro. Will stop casting wing clip if it already exists on the target
/script if (not PlayerFrame.inCombat) then CastSpellByName("Attack"); end
/cast Raptor Strike
/cast Mongoose Bite
/script if (not UnitHasDebuff("target","_Trip")) then CastSpellByName("Wing Clip");end;

```

### Installation
* Download from [here](https://github.com/stavroskasidis/MacroFunctions-VanillaWow/releases)
* Extract and copy folder "MacroFunctions" in your addons folder (Interface\AddOns)
