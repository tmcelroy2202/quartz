2 different ways to access all elements of a 2D array
1. Row-major order: 
	1. Accessing each value in a row before traversing to the next
2. Column-major order:
	1. Searching each column down all rows before moving to the next column

what you want depends on the task you are completing
if you want to access all test scores for exam 1, then it would make more sense to do row major order ( see [[1 8 - 1 2D Arrays]] for context ) 

If you want to access all test scores for student 3, it would make more sense to do column major order. 

row-major traversal
```java
for ( int index = 0; index < gradebook[0].length; index++ ) {
	System.out.println(gradeboo[0][index]);
}
```


column-major traversal 
```java
for( int index = 0; index < gradeBook.length; index++) {
	System.out.println(gradebook[index][1]);
}

```


To traverse the entire 2D array, we need to use a nested for loop ( row major ): 
```java
for ( int row = 0 ; row < gradeBook.length ; row++) {
	for ( int col = 0; col < gradeBook[row].length ; col++) {
		System.out.print(gradebook[row][col] + " ")
	}
	System.out.println();
}
```

Column - major traverse whole 2D Array:
```java
for ( int row = 0 ; row < gradeBook[0].length; row++) {
	for ( int column = 0 ; column < gradeBook.length ; column++) {
		System.out.println(gradeBook[column][row]);
	}
}
```

Java traverses more efficiently with row major ordering.

enhanced loop traversal:
```java
for ( int[] row: gradeBook) {
	for( int col: row) {
		System.out.println(col);
	}
}
```

Linear search with 2D Arrays:
```java
public String search(int[][] array2D, int key) {
	for ( int rowIndex = 0; rowIndex < array2D.length; rowIndex++) {
		for ( int colIndex = 0; colIndex < array2D[rowIndex].length; colIndex++) {
			if(array2D[rowIndex][colIndex] == key) {
			return key + "is located at: " + rowIndex + "," + colIndex;
			}
		}
	}
	return key + "is not in this 2D array/"
}
```


Common 2D array algorithms:
* Determine a minimum or maximum value
* Compute a sum, average, or mode
* Determine if atleast one element has a particular property
* Determine the presence or absence of duplicate elements
* Determine the number of elements meeting specific criteria
* Shift or rotate elements left or right
* Reverse the order of the elements 

to:
* determine a minimum or maxmium value
* compute a sum average or mode 

```java
int[][] scores = {{2,3,4,5,6}, {7,6,5,4,3}};

// initialize value here
for ( int[] row : scores) {
	for ( int i = 0 ; i< row.length ; i++) {
		// perform calculation here
	}
}
// Report results here 
```

to:
* Determine if atleast one element has a particular property 
* Determine if all elements have a particular property
* Determine the number of elements meeting specific criteria


```java
int[][] scores = {{2,3,4,5,6}, {7,6,5,4,3}};

// initialize tracker variable here
for ( int[] row : scores) {
	for ( int i = 0 ; i< row.length ; i++) {
		// Conditionally check properties 
	}
}
// Report results here 
```

to: 
* Shift or rotate elements left or right
* Reverse the order of the elements 

```java
int[][] scores = {{2,3,4,5,6}, {7,6,5,4,3}};
int[][] alteredScores;

for ( int[] row : scores) {
	for ( int i = 0 ; i< row.length ; i++) {
		// add values from scores to alteredArray 
	}
}
// Report results here 
```



