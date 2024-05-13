# Arithmetic Operators in Java
1. + Addition
2. - Subtraction
3. * multiplication 
4. / division 
5. % modulus 

# Modulus
* To divide and take the remainder
* 5 mod 3 = 2
* 4 mod 2 = 0 
* Their example:
* 17 / 5 = 3 remainder 2 
* 17 mod 5 = 2
* 15 % 6 = 3
* 10 % 2 = 0 

# Order of Operations
* it applies
* Parentheses matter
* Multiplication and division and modulus are prioritized before addition and subtraction

Variables can be written as complex expressions
int mysteryNum = 4*12/3*(4/3+2);
would work fine.

# integers and doubles
* integer division is not equivalent to double division 
* 5 / 2 != 2.5
* 5 / 2 == 2
* 5 / 2.0 = 2.5
* 5.0 / 2 = 2.5
* result is an integer so the decimal point is truncated unless you cast to a double 

Dividing by zero causes ArithmeticException
