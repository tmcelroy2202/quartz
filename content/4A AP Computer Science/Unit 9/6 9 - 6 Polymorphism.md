how java determines which method to run:
at the time a program gets compiled, methods in or inherited by the declared type determine the corectness of a non static method call.

```java
Person person1 = new Student();
person1.getName();
```
java will only check the person class. If the person class does not have a getName then it wont do it.

when the program actually runs then it will look at the object as a student object, and in doing so it will first check the Student class for a getName method, and if it does exist then java will use the getName method from the student class. If it doesn't exist it will look in the parent class.

![[Pasted image 20240227130153.png]]

![[Pasted image 20240227130244.png]]
but if you try to make a printGrade() method in the student class, and then say 
Person lovelace = new Student("ada",12);
then try to 
lovelace.printGrade()
it will not compile, as the person class has no such method. 

Several situations require this:
* You may want an array that stores different types of people and declaring lovelace as a Person allows you to combine the object with the other person objects 
* For scope purposes sometimes you need to declare the variable before you know what type of object you will have

Recap:
* At compile time, method in or inherited by the declared type determine the correctness of a non-static method call.
* At run-time, the method in the actual object type is exceuted for a non static method call.