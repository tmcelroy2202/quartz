In order to get mean and standard deviation for a given dataset with probabilities do the following 

1. Stat
2. Edit
3. Enter data 
4. Stat
5. 1 Var Stats
6. list l1 ( 2nd + 1 )
7. frequency l2 ( 2nd + 2 )


when i get the mean, thats M<sub>x</sub> and when i get the standard deviation that is σ<sub>x</sub> 

If i multiple all the dataset by 100, then the mean and standard deviation are both multipled by 100.

multiplication affects both.

if i add 50 to every item on the dataset, the mean goes up by 50, but standard deviation stays the same, because they aren't getting any more distant 

# Introducing a constant "C"
* If you multiply or divide each value of a distribution by C 
	* Mean is multiplied / divided by C 
	* Standard Deviation is also multiplied / divided by C
* If you add or subtract each value a distribution by C
	* You add or subtract C from/to the mean
	* Standard Deviation is unchanged ( distances stay the same )
 * When you multiply or add or subtract from things, shape stays the same. ( It may spread out, or it may squish together, but it will still be symmetric or left skewed or right skewed etc. )

Variance is σ^2

# Combining Multiple Distributions
* Usually its just 2 but it can be more than 2
* if its more than 2 just do it more times
* We are level 1 statistics, so when i say combined i mean adding them or subtracting them, we are not gonna try to multiply or divide distributions, that is a level 2 statistics question. 
* Taking 2 totally seperate distributions and trying to squish them together 
* multiple distributions all merging into one 
* Add
	* Mean of our sum is equal to first mean + second mean
		* M<sub>x+y</sub> = M<sub>x</sub> + M<sub>y</sub> 
	* σ^2<sub>x+y</sub> = sqrt(σ^2<sub>x</sub> + σ^2<sub>y</sub>)

$σ^{2}_{x+Y}=\sqrt{σ^2_{x}+σ^2_y}$


* Subtract
	* Mean of a difference in distribution is mean of the first - mean of the second 
		* M<sub>x-y</sub> = M<sub>x</sub> + M<sub>y</sub> 
	* σ^2<sub>x-y</sub> = sqrt(σ^2<sub>x</sub> + σ^2<sub>y</sub>)
* Whether you are adding or subtracting, that interaction between the standard deviations is always addition *