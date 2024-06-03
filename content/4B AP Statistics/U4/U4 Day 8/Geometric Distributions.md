
How Many Bottle Flips to Go Viral? Y //

Imagine It: The senior talent show is scheduled to take place this
afternoon. Michael Senatore is in Stats class practicing his talent -
bottle flipping. He tells his friends that the probability of
successfully landing the water bottle right side up is 20%. Assume
that each water bottle flip is independent.

1. If he flips the bottle ten times, what is the probability that he makes
exactly two flips?

.302 ( binomcpdf(10,.2,2))
#### You have to know whether or not it is binomial. #1 would get half credit. 
#### BINS is how you check.
1. Each flip is binary
2. Each flip is independant
3. Each flip is n same ? 
4. Each flip is same probability 

2. Whatis the probability that he makes at most two flips?
binomcdf(10,.2,2)
.67
#### If you are going to write calculator language you have to do 
#### binomcdf(n=10,p=.2,x=2)

#### it is also nice to do 
#### P(X<=2)=binomcdf(n=10,p=.2,x=2)


After the first ten flips, Michael wants to do ten more, but his teacher is
getting annoyed with all the noise and tells him he must stop flipping
once the bottle lands right side up.

3. Find the probability that he lands it on the first try.
#### Geometric distribution - keep going until you stop 
.2

4. Find the probability that he fails on the first try and lands it on the
second try.

 .4
#### All Geometric distributions are Skewed right distribution 

5. Find the probability that he lands it on the third try.
.008

Let X = the number of flips it takes for Michael to land the bottle right
side it up. Fill in the table below.

| X    | 1   | 2   | 3    | 4     | 5    | 6     |
| ---- | --- | --- | ---- | ----- | ---- | ----- |
| P(X) | .2  | .16 | .128 | .1024 | .082 | .066 | 

6. Find the probability that he lands it on the tenth try. Write a generic
rule for finding the probability that he first lands the bottle on the kth
flip.
p(1-p)^(k-1)
.2(1-.2)^(10-1)
.2(.8)^9
.8^9 * .2 
.028

7. How many flips do you expect it to take for the bottle to land right
side up? Why?
something like 5 ? because .2 goes into 1 whole 5 times. 
#### Expected value = mean 
#### If you flip many many many times you should get an expected value of 5 flips before you get a success.

M<sub>x</sub> = 1/p = 5 

STATS MEDIC

Important Ideas: Geometric Distributions U4, D8

![[Drawing 2023-12-13 13.57.16.excalidraw.svg]]

Check Your Understanding!

In a survey of 500 U.S. teenagers aged 14 to 18, subjects were asked
a variety of questions about personal finance. One question asked
whether teens had a debit card. Suppose that exactly 12% of teens
aged 14 to 18 have debit cards. Let X = the number of teens in a
random sample of size 500 who have a debit card.
a. Explain why X can be modeled by a binomial distribution even
though the sample was selected without replacement.

X is binary - they either have a card or they dont have a card
X is 

b. Use a binomial distribution to estimate the probability that 50 or
fewer teens in the sample have debit cards.

c. Justify why X can be approximated by a Normal distribution.

d. Use a Normal distribution to estimate the probability that 50 or
fewer teens in the sample have debit cards.

2. Mason never has a pencil when test day rolls around, Because
classmates are tired of having to supply pencils for Mason, only
15% of students will give them a pencil when asked. Today is test
day and Mason begins asking randomly selected students for a
pencil. Let Y = the number of students Mason asks until they find
someone who will give them a pencil.

a. Describe this probability distribution. Be sure to check the
appropriate conditions.
Binary - give a pencil or dont give a pencil
Independant - last person to give a pencil does not affect next person
Try until succeed - he just goes until he gets a pencil 
Same probability throughout - p = 0.15

Geometric

b. What is the probability that the third person asked is the first
person who gives Mason a pencil?

P(Y=3)= (.85)^2 * (.15)=.108

c. What is the probability that Mason gets a pencil by the third
person they ask?
geometcdf(.p = 15, x = 3)
P(Y<=3) = P(y=1) + p(y=2) + P(y=3) = .15+.1275+0.108 = .3855


d. How many people should Mason expect to ask before getting a
pencil?


e. Should Mason be surprised if they didn’t receive a pencil until
they asked at least 10 people? Calculate a probability to justify
your answer,

f. Find the standard deviation for the distribution of the number of
people Mason asks for a pencil before finding someone who will
give them one.