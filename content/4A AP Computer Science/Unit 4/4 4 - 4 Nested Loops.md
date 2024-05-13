- Combine for loops to create simple nested programs 

Instructed to make a for loop that prints out 1 - 5 on the same line
```java
for ( int i = 1 ; i <= 5 ; i++ ) {
	System.out.print(i);
}
```


Instructed to create a times table where output would include each increasing row of variables 

```java
for ( int i = 1 ; i < = 5 ; i ++ ) {
	for ( int j = 1 ; j <= 5 ; j++ ) {
		System.out.print(i * j);
	}
	System.out.println();
}
```

Putting  a loop inside another loop is called nesting 

Variables from within loops are out of scope when you leave the loop

number of iterations through outer loop * number of iterations through inner loop = number of iterations total 

trace this : 
```java
int outsideloop; // ( outsideloop can be used in both for loops, and in any code that follows ) 
for ( int outer = 0 ; outer < 5 ; outer++ ) {
	//code 1 
	for(int inner = 0 ; inner < 5 ; inner ++ ) {
		//code 2
	}
}
//code 3
```

code 1 gets ran 5 times 

code 2 gets ran 25 times 

code 3 gets ran 1 time 

i understand how variable scoping works so im not going to write all that out 

Nesting also possible with while loops or a combination os while loops and for loops : 

![[Pasted image 20231101103612.png]]

solves same problem we just solved ( times tables )
for loops are more efficient when we know how many times we are iterating 

