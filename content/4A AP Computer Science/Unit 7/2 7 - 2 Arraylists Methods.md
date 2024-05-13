Given this:
```java
import java.util.ArrayList;

ArrayList<E> array = new ArrayList<E>();
```

boolean add(E obj)
Summary: Appends obj to the end of list 
Example: arrayList.add("ADD!");


void add(int index, E obj)  
Summary: Inserts obj at position index, moves elements index and higher up, adds 1 to size.
Example : arrayList.add(2, "Add")

E.get(int index) 
Summary: returns element at the position index

int size() 
summary: returns number of elements in list
example: int num = arrayList.size()

E.set(int index, E obj) 
summary: Replaces element at index with obj, returns replaced element.
arrayList.set(2,"New Val");

E.remove(int, index)
Summary: Removes element from position index. Subtracts 1 from size and moves elements index and higher down one index.
Example: arrayList.remove(2);

ArrayList<Integer> list = new ArrayList<Integer>();
list.add(5);
list.add(3);
list.add(10);
list.add(5);

| 0   | 1   | 2   | 3   |
| --- | --- | --- | --- |
| 5   | 3   | 10  | 5   |

list.add(2,15);

| 0   | 1   |  2 | 3   | 4   |
| --- | --- | --- | --- |
| 5   | 3   |  15 | 10  | 5  |

int val = list.get(1);
System.out.println(val);
// prints 3

System.out.println(list.size());
// prints 4 
list.add(2,15);
System.out.println(list.size());
// prints 5 

size is always 1 greater than the highest index value 

| 0   | 1   | 2   | 3   |
| --- | --- | --- | --- |
| 5   | 3   | 10  | 5   |

int val = list.set(2,34)

System.out.println(val);
returns 10 

| 0   | 1   | 2   | 3   |
| --- | --- | --- | --- |
| 5   | 3   | 34  | 5   |

int val = list.remove(2)
System.out.println(val);
// returns 34 

| 0   | 1   | 2   |
| --- | --- | --- |
| 5   | 3   | 4   |

| 3    | 10  |
| --- | --- |
| 0    | 1   |
