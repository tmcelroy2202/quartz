scope - where a variable can be used and accessed in the program

variable scope also applies to methods and classes 

local variables only exist in the context of the method or constructor they are created in
any variable declared in a method or constructor cannot be used outside of that method or 
constructor 

local variables cannot be private or public 

in general, a variable exists from the point where it is declared to the end of the block it is declared inside of 
a block refers to curly braces 

if two have same name in same scope the variable with more specific scope takes precedence and the variable with more general scope no longer exists in that location 

![[Pasted image 20231127072523.png]]

we can attempt to avoid scope and access errors via method decomposition ( the process of breaking down large problems into smaller subproblems by creating methods to solve the individual subproblems )

