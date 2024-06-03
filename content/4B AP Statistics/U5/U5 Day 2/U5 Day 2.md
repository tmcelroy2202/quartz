What conditions do we need to check for a binomial distribution?
[[Binomial Distributions]] BINS 

binompdf 
binomcdf 

If you have a tiny sample out of a gigantic populatio nnobody is going to notice when that tiny sample gets stolen. You dont notice the 5 missing skittles because you still have 99995 left. Would you notice if i stole 10 ? what about 20 ? what about 50 ? what about 2000? 
Where is the line ? 
10% is the line. samp - > n <= (.10)N < - pp



Normal condition: Successes and failures both >= 10 
asin youve failed 10 times or more and suceeded 10 times or more 
then a binomial distribution pretty much looks normal 



1. Is this a binomial setting? Explain.

Find the probability of getting 5 green Skittles if this is not a
binomial setting. Think P(ist green AND 2"4 green AND...).

3. Find the probability of getting 5 green Skittles if this were a binomial
setting.

4. How do your answers from #2 and #3 compare? Why do you think
this is?

Ms. Williamson now grabs a huge handful of 100 Skittles from the large
bin of 10,000 Skittles. Let X = number of green Skittles in a handful of
100 Skittles. X can be considered a binomial random variable because
the 10% condition is satisfied.

5. What is the probability of getting at most 11 green Skittles?
P(X<=11) == binomcdf(100,.2,11) = 0.0126
1. Calculate the mean and standard deviation of X.
Mx = 100(.2) = 20 

2. Redo question 5 using a Normal distribution calculation,

Suppose a large bag of Reese's Pieces has 1000 pieces. The manufacturer says that exactly 40% of the candies are orange. IF we select a sample of 50 pieces, how many will be orange? Let X = the numbe rof orange candies in the sample.

What type of probability doesX have ?
Binomial - meets BINS
independant because it is less than 10%

3. Below the candy machine is a dotplot, rougly sketch it

sketch

4. What does each dot represent
The number of orange candies each sample

5. What is the mean and standard deviation for the distribution of X? Show work.
yx = np = (.4)(50) = 20
weirdo(x) = sqrt(np(1-p)) = sqrt(20(.6)(.4)) = 3.969
6. What is the approximate shape of the sampling distribution for X ? 
Approximately normal.

we knew this because it meets the normal condition
success = orange = .4(50) = 20
fail = not orange 

if there are 20 successes then there are 30 fails because this is 50 trials
Even if i did not have a dotplot, because my successes ( orange ) and my failures ( not orange ) both have atleast 10 and therefore it is still approximately normal. 

insttead of finding number of candies that are orange we will now find the proportion of candies that are orange. On the left side of the screen, change the statistic from numbre to proportion

how does the dotplot compare 
Shape is the same  but dots are squished, and range is much smaller.
if you switch the scale from number to proportion you are not switching the shape of the dots but the scale of the dots



find new mean and standard deviation, show work:
new mean :
if i take all my dots and do one thing to them then that divides mean by 50 
new mean is just old mean / 50
20 / 50 = .4 
Standard deviation = old standard deviation /50 = 3.46/50 = .07 

old mean is number of samples *  probability 
50 ? 50 is the sample size ( n )

so we really have 
np/n
so really its p

standard deviation :( sqrt(numberofsamples * probability(1-probability))) /n)
denote that a normal distribution is normal with an 
N(mean, standard deviation)
so N(.4,.07)

# Important Ideas:
![[Drawing 2024-01-08 13.55.38.excalidraw.svg]]

According to the American Dental Association 8% of adults have neve rhad a cavity. A dental graduate student contacts an SRS of 1000 adults and calcultes the proportion phat in this sample who have never had a cavity

Identify the mean of the sampling distribution of phat 
Mphat = p = 0.08

Calculate and interpret the standard deviation of the sampling distribution of phat. Check that the 10% condition is met. 
1000 <= .10(all adults)

weirdo l