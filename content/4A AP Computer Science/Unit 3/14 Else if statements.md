
```java
If ( boolean expression ) {
	code
}
else {
	code
}
```

^ normal if else

limited to two possible scenarios

```java
If ( boolean expression ) {
	code
}
else if ( boolean expression ) { 
	code
}
else {
	code
}
```

^ can have as many conditions as i want

```java
public void addTip() {
	if(totalCustomers >= 8) {
		costOfMeal *= 1.25; 
	}
	else if (totalCustomers >= 4) {
		costOfMeal *= 1.20; 
	}
}
```

Order of the If and elif matters 
You cannot just write elif like in python it has to be else if 
