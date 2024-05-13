comments allow for us to document what our programs do so others can easily use them correctly 

there are 3 types of comments
// - single line
/*  multi
line \*/
and
/** java doc \*/

make sure to include // before writing a single line comment 
multi line comments let us write more comment lines for longer comments that need more explanation 
multi line comments can also be achieved with just writing many single line comments
comments can be a debugging tool ( comment out code you dont want to run )
lets you isolate bugs you have in your program 

comments are ignored by the compiler and arent executed when the program runs 

javadocs are used specificially to create API documentation 
Javadocs are automaticaly translated to fancy documentation 

javadoc format: 
/** 
1. one sentence description of the code's function
2. Preconditions
3. Postconditions

4. Block tags

\*/

javadoc for getname
/**
returns the string name for a given power object 
Preconditions: Power object must be initialized
Postcondition: our method returns the String name that is stored in the power object 

@return name -the name of the power object 

\*/

Put javadoc comments right before the method constructor or class that the comments belong to so that javadoc knows to associate those comments with those methods when generating the documentation


