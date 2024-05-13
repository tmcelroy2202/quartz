Often arrays can have hundreds thousands or millions of values
we need a system to access them
trying to access each item can be tedious
using loops creates an easy way to access all elements

to print each element 
```java
for ( int i = 0 ; i < scores.length; i ++ ) { 
	System.out.println(scores[i]);
}
```

to find an element
```java
while(index < scores.length) {
	if ( scores[index] == target ) {
		 break;
	}
	index++;
}
System.out.println("the target was found at : " + index);
```

for( int i = 0; i <= scores.length ; i ++ ) will result in an arrayindexoutofbounds exception being thrown because the last value will be higher than our last index.