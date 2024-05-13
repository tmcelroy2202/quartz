Non void methods - there are 2 things there
1. The method header indicates its non void - it has int / double / string / bool / float etc as returntype
2. it has a return statement as last statement in method 

public int getArea(int hello);
^ that is the method header ( it is non void )
Non void methods HAVE to have a return statement
return statement ends method 

You call a non void method with a variable to grab what it returns
int a = mySquare.getArea(30);
^ a == 300

public void setlength(int rectlength);
^ returns nothing 
^ does not need a return statement
^ just does stuff 

mySquare.setlength(15);
^ square length is now 15

