local debounce = false

local function doSomeStuff()
    if not debounce then
        debounce = true

        -- Do the rest of your stuff here

        debounce = false
    end
end
