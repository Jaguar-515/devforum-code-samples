### What are Guard Clauses?
A guard clause checks a condition with either a return statement or an exception that immedentially exits a function.
This is helpful because it isolates all special checks and edge cases into seperate clauses before the main checks. It should be a 
"flat" list of conditionals, one after the other.

### Why should I use them?
The problem is that with nested conditions, it can get messy really quickly, and it can be difficult to determine the flow of code execution.
Guard clauses, on the other hand, neatly simplifies the special cases by isolating them into seperate conditions that then ends code execution
and returns a null value if the guard clauses are true.

### Example

A common example of using guard clauses is to get a certain pay amount.
This code samples shows how to get a pay amount via nested conditions:

```lua
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
```

However, this is messy code and difficult to read, since it depends on a lot of nested conditionals.
Let's improve upon this code using guard clauses:

```lua
local isDead
local isSeparated
local isRetired

local function getPayAmount()
	if isDead then return 1000 end
	
	if isSeparated then return 1500 end
	
	if isRetired then return 2000 end
	
	return 500
end
```

Ta-da! The code is significantly easier to read using guard clauses and more easier to follow the code execution.

### Conclusion
I hope this helps you understand what guard clauses are and how to use them! If you have any questions/comments, reply to this thread below.
