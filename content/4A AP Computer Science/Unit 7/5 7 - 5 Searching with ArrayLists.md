We can use traversals to search for individual elements in arrays or arrayLists.

When would we search for an item in an array? 
Look for a name in a phonebook, or list of users
See if certain inventory is available for sale 

if elements dont exist return -1 

```java
public int search(ArrayList<Integer> array, int target) {
	for ( int index = 0; index < array.size(); index++) {
		int elem = array.get(index);
		if (elem == target) {
			return index; 
		}
	}
	return -1;
}
```

this process is called Linear or Sequential search. Linear search checks each element in order until the desired value or the end of the array is reached.

if we take another look, we can see that using a loop is searching linearly through the array.  Index by index. 

Linear search is fairly easy to implement and understand, but is limited by the number of elements being searched. the larger the dataset the longer linear search takes. Think about the one millionth item. Linear search would have to do one million iterations to find it. 



