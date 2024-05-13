Putting a number in a container and just use the name of the container 
CSA focuses on Abstraction and Problem Solving

A variable is a placeholder for a value or object or is a container for a value within memory
Can be used to process information 
Whatever is held in the placeholder / container is changing constantly throughout one process 

Variables have names and datatypes :
Boolean - 1 bit  ( false ( by default ) or true )
char - 2 byte ( 16 bit ) ( "a", 'A')
int - 4 byte (124 )
double - 8 byte ( 124.00 )
String ( reference to char ) 

int myAge = 35;
    ^^^^^ has a name ( myAge ), has a datatype ( int), has a size ( 4 bytes ), has a location ( Hex ) ( we do not need to know the location ), has content ( whole numbers ( cannot put 35.00 )) 

Declaration  - creating variable ( int myAge; )
initiation - picking a value ( int myAge = 35;) 
assignment - reassigning the value held by that variable ( myAge = 30) 

be concerned about overflow - if you cast a variable to a type that will overflow thats no good, and if you pushed that into production people would be very displeased with you. 

