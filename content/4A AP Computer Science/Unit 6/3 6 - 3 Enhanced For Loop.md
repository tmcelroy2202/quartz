Simplified, but less flexible way to loop through a collection of items, including Arrays. Also referred to as For Each loops

structure:

```java
int[] scores = {80, 92, 91, 68, 88};

for(int score : scores ) {
	System.out.println(score);
}
```

Why would you a standard for loop use? 
* You need a counter variable 
* You need to update values in your array

Why would you use an Enhanced for loop?
* You don't need a counter
* You don't need to update values in the array 

The for each loop by design does not allow modifying arrays or arraylists.
You cannot modify the content of the list you are operating on.


For each loop just wants you to / allows you to go look at the information, take out the information, and do something. 

Does not allow you to modify the content of the list. 




