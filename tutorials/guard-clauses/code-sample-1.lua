local isDead
local isSeparated
local isRetired

local function getPayAmount()
	local result
	
	if isDead then
		result = 1000
	else
		if isSeparated then
			result = 1500
		else
			if isRetired then
				result = 2000
				
			else
				result = 500
			end
		end
	end
	
	return result
end
