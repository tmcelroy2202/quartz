Recursion is an iterative process where a method calls itself.

In recursion we are breaking problems down into similar sub problems of the same form. Then the problems get so small that they are easy to solve!

If we write out the formula for summing numbers 0 to 10 what would it look like ? 
```java
sum(10) = ?;
sum(10) = 10 + 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1;

public int sum( int num ) { 
	int final = 0;
	for ( int i = num ; i > 0 ; i --) {
		final += i;
	}
	return final;
}
// recursive
public int sum( int num ) { 
	if ( num == 0 ) {
		return 0;
	}
	return num + sum(num-1);
}
```

# Base Case
When our process gets to the point where it can't be simplified anymore, we say that this is our base case. 

sum ( 0 ) = 0  is our base case

all of our other numbers can be represented generically with a formula like the one below:

sum(n) = n + sum(n-1); 

each time we call a recursive method, its own set of local variables are created.
when we look back, we can see the sum method was called a total of 6 times. 
we are able to accomplish the same task as our for loop we saw earlier. 

```java
public static void main ( String[] args ) {
	int[] myNums = {1,2,3,4,5};
	System.out.println(sumArray(myNums,myNums.length-1));
}
public int sumArray(int[] nums, int index) {
	if ( index > 0 ) {
		return 0;
	}
	return nums[index] + sumArray(nums,index-1);
}
```

index = 4
index = 3 
index = 2
index = 1
index = 0
index = -1 
even though we reached 0, 0 is not our base case.  -1 is.
we call it total of 6 times. 


# Recap
* A recursive method is a method that calls itself
* We use recursion ot help take a complex problem and make it simpler, each time we call it
* once we get to a point where our problem cannot get any simpler, we are said to have reached the base case.
* recursive problems can also be written as iterative loops