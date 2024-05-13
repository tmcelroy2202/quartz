Recursive methods are stacked and then once she reaches the base case shes gonna pop pop pop pop the time of stacking takes lots of space, its running faster, but takes lots of space. iterative way runs slower, takes less space. if you work for a company for which resources is a issue then use iterative approach. if speed is the focus then use recursive 


Over the next two lessons we are going to look at two common examples of recursion: Searches and sorts.

Linear search checks each element in order until the desired value or the end of the array is reached.

```java
public int search(ArrayList<Integer> array, int element) { 
	for ( int index = 0; index < array.size() ; index++ ) {
		int elem = array.get(index);
		if (elem == element) {
			return index;
		}
	}
	return -1
}
```

this would be inefficient if we had a large list to look through

binary search finds the middle of the array and tests that point. An array must be sorted to use binary search.

it is slightly more efficient for smaller arrays, and significantly more efficient for larger arrays. 

| Linear                             | Binary                        |
| ---------------------------------- | ----------------------------- |
| Not Efficient                      | Very efficient                |
| Works on sorted or unsorted arrays | Only works on sorted arrays   |
| easy to code                       | slightly more complex to code |

Think back to linear searches, each iteration only eliminated 1 item from our search. In contrast, binary search eliminates half of our population each time. 

The maximum number of iterations needed for a binary search is roughly calculated using a log function:
log2arraySize


Given an array of 512 items, what is the maximum number of iterations it will take to find an item?

log2 512 = 9 

logarithmic functions are the inverse of exponentials, 2 ^ 9 = 512.


```java
public int binaryLoop(int[] array, int target) {
	int begin = 0;
	int end = array.length - 1;
	while ( begin <= end ) {
		int mid = ( begin + end ) / 2;
		if ( target < array[mid]) {
			end = mid -1;
		}
		else if ( target > array[mid]) {
			begin = mid + 1;
		}
		else if ( target == array[mid]) {
			return mid;
		}
	}
	return -1;
}
```


```java
public int binaryRec(int[] array, int target, int begin, int end) {
	int mid = ( begin + end ) / 2;

	if ( target == array[mid]) {
		return mid;
	}
	if ( target < array[mid]) {
		return binaryRec(array,target,begin,mid-1);
	}
	if ( target > array[mid] ) {
		return binaryRec(array,target,mid+1,end);
	}
	return -1; // alternate base case 
}
```

for a binary search, either implementation has generally similar efficiency.

