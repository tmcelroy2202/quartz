# What do we do when we dont want to inherit a method from the superclass?

Example of this: toString() - we do not want to inherit the tostring from the superclass as we have a different tostring we want to use 

example:
![[Pasted image 20240221125033.png]]

they both have the same name and same input parameters.  Student class tostring overrides the person class tostring. It will be called instead of the person tostring. a person tostring will continue to use a person tostring. 

to denote an override you use
```java
@Override
public string toString() { 
```

including @Override is not required but is best practice because it signals to java that you are trying to override a superclass method, which the compiler can then go and check to see if you actually did correctly, and throw an error if you did not do correctly. also helps to make your code more readable by telling programmers you are overriding a method.

A subclass is usually designed to have modified ( overridden ) methods, additional methods, or instance variables . 
when calling methods for an object, java starts by looking in the object's class for that method signature, if it finds it there, it will use that method, otherwise it will look for the superclass for that method. Any method that is called must be defined in its own class or superclass.



