 Merge sort is generally more efficient than insertion or selection sort, however the code to execute it is significantly more complicated. Merge sort is a recursive algorithm. 

We use a merge method to break down our array and a helper method reassemble it. 

```java
public static void mergeSort(int[] current, int length) {
	if ( length < 2 ) { 
		return;
	}
	int mid = lenght / 2;
	int[] left = new int[mid];
	int[] right = new int[length-mid];
	for ( int i = 0 ; i < mid ; i++ ) {
		left[i] = current[i];
	}
	for ( int i = mid ; i < length ; i++ ) {
		right[i-mid] = current[i];
	}
	mergeSort(left,mid);
	mergeSort(right, length-mid);
	merge(current, left, right);
}
```

this method breaks our array into smaller pieces, and when it cant break any further, it uses the merge method to start recombining. our base case is when we have only one thing in our array. 

the merge method:
```java
public static void merge ( int[] current, int[] left, int[] right ) {
	int leftSize = left.length;
	int rightSize = right.length;
	int i = 0;
	int j = 0;
	int k = 0;
	while ( i < leftSize && j < rightSize ) {
		if ( left[i] <= right[j]) {
			current[k++] = left[i++];
		}
		else {
			current[k++] = right[j++];
		}
	}
	while ( I < leftSize ) {
		current[k++] = left[i++];
	}
	while ( j < rightSize ) {
		current[k++] = right[j++];
	}
}
```

notice it returns nothing, as it is updating the actual array object. 