return statements return a value so that the ouput of the function can be used further along in the program 

Return type must match the type of the value that is returned 

How many 13x7 desks could fit in a 200x114 space

Rectangle rect1 = new Rectangle(13,7)
int rect1Area = rect1.getArea()j
Rectangle rect2 = new Rectangle(200,114)
int rect2Area = rect2.getArea()

number = rect2Area / rect1Area  
System.out.println(number + " 13x7 desks could fit in a 200x114 area.")

# String Objects - 
Since strings are objects they have methods.

name.concat("value")
name.replace("a","p")
name.toUpperCase()

String methods do not alter existing strings but actually create new ones.
If we assign name.toUpperCase to a new variable that works.

This is because strings are immutable - the only way to change a string is to reassign it. 

Strings can be concated with a simple + 
^ spaces are not added automatically when concatenating 

+= works with strings as well.

string + number = string
string + number + number = string
so for example
"hello i am tommy " + 20 + 10 =
hello i am tommy 2010


"hello i am tommy " + (20 + 10) =
hello i am tommy 30 

quotes will throw error unless you escape them with a \ 
"Tommy said \"hello there\""
\\ includes a backslash
\n is a line break
\t is a tab space

