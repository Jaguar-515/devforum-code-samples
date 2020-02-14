local debounce = false

local function doSomeStuff()
    if debounce then return end

    debounce = true

    -- Do the rest of your stuff here

    debounce = false
end
