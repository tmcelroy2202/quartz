static indicates that the method can be used by the class name itself and not necessarily by the class object
static method Rectangle.rectEquations(); - returns the formulas for rectangles. E.g. "The formula for area is L * W
i do not need a rectangle object to do this.

Static methods belong to the class so they cannot access instance variables or non static methods of the class. 
if we try to get width or have a static getwidth or getarea then we get an error, because static methods are
not associated with an object, but with a class itself
if we wanted one method to only square a number, we could use Math.pow() to do that. 

int numSuperheroes tracks the number of superheros that have been created 

we could try to do this with an instance variable, but then it would be different with every new object. 

if we make a private static int numSuperHeroes then it will exist across all objects 

When we return it we should use return Superhero.numSuperheroes

static variables can be used by an object of the class as long as the variables are public. 

instance variables exclusive to the reference
static variables exist across all objects 