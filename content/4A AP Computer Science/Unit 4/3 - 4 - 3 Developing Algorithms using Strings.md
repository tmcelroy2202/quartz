We can traverse strings using loops
```java
for ( int i = 0 ; i < string.length() ; i++ ) {
	System.out.println(string.substring(i , i + 1))
}
```

^ would loop through each character in the string and print each letter on the next line 
^ wouldve been useful for that reverse printing number thing from a while ago 
^ if we tried to do i <= string.length() we would get index our of bounds error 

we can also use 
charAt(int index)
to get a character at a specific index in a string 
charAt() is not on the ap exam so use substring so you learn it good

we can use string traversals to see how many characters in string are uppercase
![[Pasted image 20231016123433.png]]
we can replace substrings with other substrings 
![[Pasted image 20231016123451.png]]
