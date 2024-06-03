# BINS - Acronym for detecting if it is a binomial
* Binary - Each trial has only 2 outcomes 
* Independant - > each shot going through is independant from if the last went through
* N is fixed ( number of trials ) ( he only gets three shots )
* Same probability throughout 


# Binomial Formula
P ( X - K ) = <sub> n </sub> C <sub> k </sub> * p^k * (1-p)^(n-k)
.72 ( make the shot )  ( P )  
.28 ( fail the shot ) ( done one time because one way to lose ) 

.28 = 1 - P 

10 - 6 makes, 4 misses 

(.72)^6  (.28)^6

p for probability ( Specifically probability of success ) ( this is our .72 )
k is not a probability but a number of successes ( 6 ) ( P ^ k = .72^6 )
1 - P = probability of failures 
n is the total number of trials so n - k is the total number of fails 

sub n C sub k is number of combinations 

Math - > probability - > ncr 

10 ncr 6
210

# Calculator shortcuts
2nd vars - > binompdf = exactly one value 
                    bincomcdf = all values below 


# Summary stats for binomials:
M<sub>x</sub>  = np 
weirdo<sub>x</sub> = sqrt(np(1-p)))