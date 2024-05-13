for ( variable initialization; boolean expression; increment ) {

}
for( int i = 0; i < 3; i++)

i = 0 - i starts as 0 
i < 3 - while  i is less than 3, for loop will continue to execute
i ++ - increases i by 1 after each for loop execution 

does not have to start at 0 
for( int i = 1; i < 3 ; i++)

can be any boolean expression
for( int i = 1; i <= 40 ; i += 5 )
for( int i = 1; i > 3 ; i += 5 )

does not have to be increase by 1 
for( int i = 1; i < 3 ; i += 5 )
increases by 5 each time ^ 
for( int i = 1; i < 3 ; i-- )
decreases by 1 each time ^ 

when a for loop iterates one too few or one too many times that is an off by one error 

for loops can be written as while loops and while loops can be written as for loops
![[Pasted image 20231016100829.png]]

while loops are generally for things where you do not know how many times it will execute

for loops are generally for instances where you do know how many times it will execute


