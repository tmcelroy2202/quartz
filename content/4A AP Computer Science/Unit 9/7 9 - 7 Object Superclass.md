There are about 11 methods in the Object class that can be inherited by any object. We are going to focus on 2 of these methods.
* boolean equals(Object other)
* String toString()

the equals method is often overriden by a subclass. using the object level version of the equals method, java only returns true if two objects are represented by the same section of memory.

a good example of this overriding is with the string object. .equals on a string compares if each letter in the string is the same, not just if they are the same object.

generic toString for an object returns the object type followed by an @ symbol and an unsigned hexadecimal representation of the object. this has little value which is why it is often overriden. e.g. the person class, where we override tostring to return the person's name

object class is superclass of all other classes in java, and is part of the java.lang package. while the object class has 11 different methods the two most common ones we see are .equals and .tostring