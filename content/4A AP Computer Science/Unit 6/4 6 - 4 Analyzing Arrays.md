Many algorithms, that follow few basic ideas.
* Mathematical analysis
* Analyzing properties of the elements
* reordering elements

basic format for mathematical calculations :
```java
int[] scores = {80, 92, 91, 68, 88};

// initialize value

for (int i = 0 ; i < scores.length ; i ++ ) {
	// perform calculation here 
}

// report result here 
```

Calculating an average 

```java
int[] scores = {80, 92, 91, 68, 88};

int sum = 0;

for (int i = 0 ; i < scores.length ; i ++ ) {
	sum += scores[i]
}

System.out.println((double) sum / scores.length);
```
^ casting to a double makes sure we dont lose our decimal point

basic format for checking values:

```java
int[] scores = {80, 92, 91, 68, 88};
String[] grades = {"A", "C", "B", "A", "B"};

// initialize value

for (int i = 0 ; i < grades.length ; i ++ ) {
	// Conditionally check properties 
}

// report result here 
```

Example: How many A's

```java
String[] grades = {"A", "C", "B", "A", "B"};

// initialize value
int numAs = 0;

for (int i = 0 ; i < grades.length ; i ++ ) {
	if (grades[i].equals("A")) {
		numAs ++
	}
}

// report result here 
System.out.print("Number of A's: ");
System.out.println(numAs);
```

Example: Find the minimum value

```java
int[] scores = {80,92,91,68,88}
int minIndex = 0;
for ( int i = 1 ; i < scores.length; i+= ) {
	if ( scores[i] < scores[minIndex] ) {
		minIndex = i;
	}
}
System.out.println("minimum number is " + scores[minIndex] + " which is found at index " + minIndex)
```

Reordering arrays:
* Create a new temp array that is the same size as the original
* Copy the elements from the original array to the new array in the order you want
* When finished, copy temp array back over on top of the original array to replace it.
* be careful around edge cases 

Example: Shift elements to the right by 1
```java
int[] numbers = {1,2,3,4,5};
int[] temp = new int[numbers.length]; //default array

//loop, but stop at last element ( edge case )
for ( int i = 0 ; i < numbers.length - 1; i++) {
	temp[i + 1] = numbers[i];
}

temp[0] = numbers[numbers.length - 1]; // edge case
numbers = temp;

for ( int i = 0 ; i < numbers.length ; i++ ) {
	System.out.println(numbers[i] + " ");
}
```

Example: Finding Duplicates
```java
int[] numbers = {1,2,3,4,5};
boolean hasDuplicate = false;

for( int i = 0; i < numbers.length - 1; i++) {
	for(int j = i + 1; j< numbers.length; j++) {
		if (numbers[i] == numbers[j]) {
			hasDuplicate = true;
		}
	}
}

System.out.print("Has Duplicate: " + hasDuplicate);
```

# Recap
* Arrays store lists of info
* iteration and selection are ways of letting a computer process each value in an array
* Traversing through arrays allows us to analyze their contents
* There are dedicated algorithms for traversing arrays
* other common algorithms are variations on the ones we looked at in this doc.