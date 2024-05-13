When we create an object and want to call a method for that object we do so using the object name and the method. For example : 
```java
Square box = new Square(5);
box.area();
```

we know a superclass object gets created when we create a subclass, but we do not have a variable name to reference.
we can call the name generically using the keyword super.

super is similar to this, but instead of being the current object, its the superclass object.

same way we can reference methods and pass parameters using the this keyword, we can do the same stuff with the super keyword ( super.getName() from exercises )

