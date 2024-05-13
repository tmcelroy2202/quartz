You can have different content but not different datatype inside
if its an int[] mynum = new int [ 10] 
it has to be all 10 integers 

arraylist has to be a reference datatype ( so Integer or String, but not char or int )

Arrays are objects that can store many values of the same type
they are simply a list of elements 
can be primitive types or reference types, does not matter.

once array is created size and type of variable cannot change

an array that contains 5 elements has index values 0 - 4 

2 ways to make an array:

int[] scores = new int[5];
^ creates an array with all default values for all 5 elements. ( 0 0 0 0 0 )


| type    | default value |
| ------- | ------------- |
| int     | 0             |
| double  | 0.0           |
| boolean | false         |
| Objects | null          |

Objects include strings

We can also do arrays with an intialized list

int[] scores = {80, 92, 91, 68, 88};
We can make an array with any type of element.

Type[] variableName = new Type[numElements];
or
Type[] variableName = { initial values list };

to assign a value 
scores[3] = 72;

index 3 in the array will update to 72
( this is the 4th item of the array because it starts at 0)

Arrays start at 0!!

to get length of an array use scores.length;
scores.length is not a method it is a property. 

int lastIndex = array.length - 1;
^ because indexes start at 0

when we try to access an index that we dont have we get
ArrayIndexOutOfBoundsException
this includes if you try to access array.length ( because it is one higher than the last index )

