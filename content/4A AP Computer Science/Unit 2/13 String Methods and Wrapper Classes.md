Examples
name.concat("hello") - returns new string with hello on the end 
name.replace("a","p") - returns new string with all instances of a replaced with p 
name.toUpperCase() - returns uppercase version of string

string indexes start at 0 - string indexes end at length - 1 ( because they start at 0 )
str.charAt(1) - returns the character at index 1 
name.length() - returns length of string
name.substring(2, 6) - returns the substring beginning at 2 and ending at 5 ( this is just because it is exclude on second value )
if you do an index thats not available you get an indexoutofbounds exception 

str.indexOf(j) - see what the index of a letter is in a string
str1.equals(str2) - see if two strings have the same characters 
str.compareTo(str2) - compares the value of the first character thats not the same in both strings - is a numerical value based on that character being before or after the other character alphabetically ( really based on location in ascii table )
capitals are lower values than lowercase letters 

# Wrapper Classes
Some objects will only interact with other object datatypes ( e.g. arraylists  )
We still want to store primitive values in arraylists
we can use wrapper classes to do this

boolean = Boolean
char = Character 
int = Integer 
double = Double 

Wrapper classes are uppercase
we only study Integer and Double 
Wrapper classes let primitive values do activities they could not normally do 

Wrapper classes provide methods which are convenient
Instantiation is the same as other objects
Integer y = new Integer(30)
datatype must match what you are trying to do ( i cant have a new Integer(30.4))
primitive types use lowercase letters 
Integer wrapper has a 
Integer.MIN_VALUE
and
Integer.MAX_VALUE
and
Integer.intValue

double wrapper has a 
Double.doubleValue 

intValue does what you think it would do

so does doubleValue

autoboxing and unboxing 
autoboxing converts primitive int to an Integer or a primitive double to a Double
it is done automatically by the java compiler
instead of having to write the full constructor we can just write
Integer myInt = 30

Java also autoboxes when a primitive value is passed as a parameter to a method that expects an object of the corresponding wrapper class 

unboxing converts wrapper type to its corresponding primitive value 
done through just int myInt = myInteger

