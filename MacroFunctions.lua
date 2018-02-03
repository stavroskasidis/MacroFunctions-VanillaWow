function UnitHasBuff(unit,buffName)
	local i=1;
	local found=false;
	while UnitBuff(unit,i)~=nil and not found do 
		if (string.find(UnitBuff(unit, i),buffName))then 
			found=true;
		end;
		i=i+1;
	end;
	
	return found;
end

function UnitHasDebuff(unit,debuffName)
	local i=1;
	local found=false;
	while UnitDebuff(unit,i)~=nil and not found do 
		if (string.find(UnitDebuff(unit, i),debuffName))then 
			found=true;
		end;
		i=i+1;
	end;
	
	return found;
end

function PrintUnitBuffs(unit)
	local i=1;
	while UnitBuff(unit,i)~=nil do 
		print(UnitBuff(unit, i));
		i=i+1;
	end;
end

function PrintUnitDebuffs(unit)
	local i=1;
	while UnitDebuff(unit,i)~=nil do 
		print(UnitDebuff(unit, i));
		i=i+1;
	end;
end