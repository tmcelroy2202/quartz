As data sets grow, they can be harder to manage and sort through.

Organizing can make it easier to search through.

There are standard algorithms we can use to sort data structures. Two of them are:
1. Selection sort
2. Insertion sort

Selection sort:
	Sorts an array by repeatedly finding the minimum value, and moving it to the front of the array. 

How can we implement this ? 
```java
for ( int index = 0 ; index < array.length - 1 ; i++ ) { 
	int minIndex = index;
	for ( int i = index + 1 ; i < array.length ; i++ ) {
		if (array[i] < array[minIndex]) {
			minIndex = i; 
		}
	}
	int tempValue = array[index];
	array[index] = array[minIndex];
	array[minIndex] = tempValue;
	
}
```

or
```java
for ( int index = 0 ; index < array.length - 1 ; index++ ) { 
	int minIndex = findMinimum(array,index);
	swap(array, index, minIndex);
}
```
Only go to second to last element, as final value is swapped by swapping second to last element. 

number of comparisons is : (n - 1) * n / 2 

