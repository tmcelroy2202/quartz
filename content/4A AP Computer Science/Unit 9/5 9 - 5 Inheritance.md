common javadoc syntax:
when class S is a class T then S is a subclass to the T superclass. S means subclass T means superclass in javadoc.

polymorphism is the capability of a method to do different things depending on the object it is acting upon

it comes from the greek poly meaning many and morph meaning forms

in java we see this in our objects as they can take a different form depending on their implementation. java can call the correct method even when the object is disguised as a generic reference. 

```java
Student student1 = new Student();
```
left side declares variable as a specific reference type ( Student ) with variable name student1

right side instantiates the object with a specific object type ( student() )

sofar we have only looked at cases where the reference type was the same as the object type, while this is often the case, the object type and reference type can be different.

i can declare a variable on the left with a superclass then instantiate it on the right side with a subclass. doing so facilitates polymorphism

declaring using the superclass reference type allows us to create an object as either the superclass or any subclass

for a Person superclass we can create a 
```java
Person person1 new Person();
```
or a 
```java
Person person1 new Student() 
```

student is a subclass of person

we do this to facilitate polymorphism, we can take advantage of this in a number of ways. We can use a type T as a formal parameter in a method, then pass any object of type T or S. We can create Arrays and Arraylist of a T and store any type T or S objects. 

![[Pasted image 20240227125827.png]]

The class hierarchy that we saw earlier in the unit can also play a role in polymorphism. By using a superclass in our declaration we enable our variables to take on different forms. 


