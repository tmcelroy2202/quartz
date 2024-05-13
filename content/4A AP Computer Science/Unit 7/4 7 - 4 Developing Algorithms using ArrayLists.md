Adding an element while traversing 
```java
public void addElem(ArrayList<Type> list) {
	for(int index = 0; index < list.size() ; index++){
		//condition for adding element
			list.add(index+1,element);
			index++;
	}
}
```

so if number is odd add number + 2 after number? 
```java
public void addElem(ArrayList<Type> list) {
	int element = list.get(index);
	for(int index = 0; index < list.size() ; index++){
		if(elem % 2 == 1)
			list.add(index+1,element + 2);
			index++;
	}
}
```

ArrayLists have some common algorithms depending on datatype:
* Determine a minimum sum or maximum value
* Compute a sum, average, or mode
* Determine if at least one element has a particular property
* Access all consecutive pairs of elements 
* Determine the presence or absence of duplicate elements
* Determine the number of elements meeting specific criteria 
* Shift or rotate elements left or right
* Reverse the order of elements

in order to:
	* Determine a minimum sum or maximum value
	* Compute a sum, average, or mode

we:
```java
Arraylist<Integer> scores = new ArrayList<Integer>();

//initialize value here 

for (int i = 0; i < scores.size(); i++){
	//perform calculation here
}
//report results here 
```

in order to:
* Determine if at least one element has a particular property
*  Determine if all elements have a particular property
* Determine the number of elements meeting specific criteria

we:
```java
ArrayList<String> grades = new ArrayList<String>();

//initialize tracker variable

for(int i = 0; i < grades.size; i++){
	//conditionally check properties
}
//report results here

```

In order to:
* Shift or rotate elements left or right
* Reverse the order of elements

we:
```java
ArrayList<String> grades = new ArrayList<String>();
ArrayList<String> alteredArray = new ArrayList<String>();

for (int i = 0; i < grades.size(); i++){
	//add values from grade to alteredArray
}
//report results here 
```

in order to sum indicies of two arrays:
```java
ArrayList<Integer> summedList = new ArrayList<Integer>();
for(int index = 0; index < list1.size(); index++) {
	int sum = list1.get(index) + list2.get(index);
	summedList.add(sum);
}
return summedList;
```