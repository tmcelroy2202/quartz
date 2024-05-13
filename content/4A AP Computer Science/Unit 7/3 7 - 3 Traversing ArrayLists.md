```java
ArrayList<Integer> scores = new ArrayList<Integer>();
for(int i = 0; i < scores.size(); i++) {
	System.out.println(scores.get(i));
}
```

ArrayList indices go from 0 - (size() - 1)
if i <= scores.size() we get an index out of bounds exception because the method would try to access an item that doesn't exist 

We can also use while / enhanced loops

while:
```java
int i = 0;
while(i<scores.size()){
	System.out.println(scores.get(i));
	i++;
}
```

enhanced for:
```java
for(int score: scores){
	System.out.println(score)
}
```

Because ArrayLists can change size, we have to be careful when traversing them

Want to make a method that removes any item from an ArrayList that started with the letter A

```java
public void removeA(ArrayList<String> list){
	for(int i = 0; i < list.size(); i++) {
		if(list.get(i).startsWith("A"))
		{
			list.remove(i);
		}
	}
}
```

when we run this though, we run into a problem. as we remove the As everything is offset. 

the real way to do this is 
```java
public void removeA(ArrayList<String> list){
	for(int i = 0; i < list.size(); i++) {
		if(list.get(i).startsWith("A"))
		{
			list.remove(i);
			i--;
		}
	}
}
```

Same goes for while loops

Trying to use remove with an enhanced for loop will result in a concurrent modification exception. this occurs when an object is modified while it is being iterated on. so we should not use enhanced for loops if we are adding or removing items from arraylists.

