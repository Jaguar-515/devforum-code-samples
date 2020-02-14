### What are Guard Clauses?
A guard clause checks a condition with either a return statement or an exception that immediately exits a function. This is helpful because it isolates all special checks and edge cases into separate clauses before the main checks. It should be a "flat" list of conditionals, one after the other.

### Why should I use them?
The problem is that with nested conditions, it can get messy really quickly, and it can be difficult to determine the flow of code execution. Guard clauses, on the other hand, neatly simplifies the special cases by isolating them into separate conditions that then end code execution and return a null value if the guard clauses are true.

### Example
An example of using guard clauses is with debounces.
Here's an example of using a debounce in a nested condition:
```lua
local debounce = false

local function doSomeStuff()
    if not debounce then
        debounce = true

        -- Do the rest of your stuff here

        debounce = false
    end
end
```
However, this is messy code and difficult to read, since it depends on a lot of nested conditionals. Let's improve upon this code using guard clauses:
```lua
local debounce = false

local function doSomeStuff()
    if debounce then return end

    debounce = true

    -- Do the rest of your stuff here

    debounce = false
end

```
Ta-da! The code is significantly easier to read using guard clauses and more easier to follow the code execution.

### Conclusion
I hope this helps you understand what guard clauses are and how to use them! If you have any questions/comments, reply to this thread below.

You can even find this tutorial on GitHub [here.](https://github.com/Jaguar-515/devforum-code-samples/tree/master/tutorials/guard-clauses)
