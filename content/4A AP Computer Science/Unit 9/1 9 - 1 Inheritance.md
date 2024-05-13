When we build large programs we often use several instance variables and several classes to model the problem

if you wanted to make a person class then you might want a name and birthday for the person , that person HAS A name and HAS A birthday. A person class might have name and birthday as two instance variables.
There is also "is a", for if one thing is a more specific example of another thing. A student is a person. It is a more specific example of the person class. A worker is a person. Every student is a person, but not every person is a student. The person class is a more general class and the student class is a more specific class.

![[Pasted image 20240214102213.png]]

A student has in common a number of methods with a person ( every person and every student need a name and a birthday), but a student also has a few unique methods to it ( every student needs a grade level and a gpa, but not every person needs these. )

When classes have an "is A" relationship, we can create a superclass.

a class hierarchy can be developed by putting common attributes and behaviors of related classes into a single class called a superclass. Superclasses allow us to not reimplement the person class to make the student class 

Common attributes and behaviors go in a superclass. In this example, the Person class is a Superclass. subclasses *inherit* public attributes and behaviours from the superclass. A superclass does not have access to attributes and behaviors of the subclass class. Student has access to student and person methods. person only has access to person methods. To create a superclass subclass relationship, we use the keyword extends followed by the name of the superclass. no modifications are needed of the superclass. A subclass can only extend one superclass. 
![[Pasted image 20240214103555.png]]

![[Pasted image 20240214103628.png]]

![[Pasted image 20240214103616.png]]

it is important to note that the class header uses the keyword extends to extend the person superclass
also take note that you still pass in values for name and birthday when you create the student, but they are not found in the student class, they get passed to the person class.

extending a class that has been extended is ok 
![[Pasted image 20240214103733.png]]


polymorphism is this unit
polymorphism in biology is more forms 
in java its you have a different method that can be overloading during runtime and which one should be bound when its run thats method overwriting and thats the key of polymorphism. there are many methods that get loaded into the environment which one should you bind. in compile time we have method overloading you know system.out.println you can have so many different contexts be printed out, thats overloading during compile time, during runtime which method you will use to run is polymorphism, which means i have many to choose, with different objects I pick up different things to run during runtime 