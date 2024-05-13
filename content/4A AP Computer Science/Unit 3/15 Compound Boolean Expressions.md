```java
public void passwordStrength() {
	if (password.Length() > 8 && password.charAt(0) == '#') {
		System.out.println("Password Strength: Good")
	}
	else if (password.Length() < 8) {
		System.out.println("Password Strength: Bad - Add more characters")
	}
	else if (password.charAt(0) != '#') {
		System.out.println("Password Strength: Bad - Add pound sign")
	}
}
```

here are the logical operators that can be used in conditional statements:
not - ! - evalutes to opposite boolean value 
if x == True
then !x == False

Or - || - evalutes if any of the statements in the condition are true
if x == True
and
y == False
then x || y == True

And - && Evalutes whether all conditions in the statement are true
if x == True
and
y == False 
then x && y == False

Short circuit evaluation - skips irrelevant expressions 
like if you say 4 == 5 && ... it wont even think about anything past the 4 = 5 because that was false and you said &&. Same thing if you say 5 == 5 || ... it wont even think about the ... because 5 == 5 evaluates to true 





