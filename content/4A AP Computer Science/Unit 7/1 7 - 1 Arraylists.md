We know what [Arrays]([[1 6 - 1 Traversing arrays]]) are  

Array sizes can be adjusted by creating a new array of a different size.

A more convenient way to do adjustable arrays is through arraylists

Arraylists are similar to arrays except that they are a mutable list of object references 

Here is how you use an arraylist:
```java
import java.util.ArrayList;

ArrayList<E> list = new ArrayList<E>();
```

E represents the data type that will be used in the arraylist

This is the primary difference, we must use arrows to specify which datatype will be stored in an arraylist.

The declaration type must match the initialization type.
```java
ArrayList<String> list = new ArrayList<String>();
```

Because ArrayLists only store reference types, you must use Integer and Double instead of int and double when dealing with arraylists. 

This also works but is highly discouraged as it makes the compiler unable to properly debug. 
```java
ArrayList list = new ArrayList();
```

ArrayLists can contract and expand and they can only store objects, while Arrays can only store primitive values 
