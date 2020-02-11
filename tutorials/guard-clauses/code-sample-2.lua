local isDead
local isSeparated
local isRetired

local function getPayAmount()
	if isDead then return 1000 end
	
	if isSeparated then return 1500 end
	
	if isRetired then return 2000 end
	
	return 500
end
