
```java
public static void sum() { 
	Scanner input = new Scanner(System.in);
	System.out.println("Enter a number:");
	double first =  input.nextDouble();
	System.out.println("another number:");
	double second = input.nextDouble();
	System.out.println("The sum of " + first + "  and " + second + " is " + (first + second) );

}
```

```java
while ( boolean expression ) { 
	// will execute if boolean expression is true 
}
```

Once all the code in the while loop is executed, it just goes back to the boolean expression to re evaluate. If the boolean expression is still true, the while loop runs again. if the boolean expression is false, the while loop stops.

We can terminate a while loop by using a break statement  ( allow you to break out of a while loop )

while(true) - infinite loop - runs until reaches break statements. 

return keyword also ends while loop, but returns a value. return exits the method aswell though. 
break does not return 