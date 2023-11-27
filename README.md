# biostat777project2nsifnugel

**Welcome!**

The title of this package is *biostat777project2nsifnugel*.

It was created by Natalia Sifnugel as part of Project II for Biostat777 at JHSPH.

This goal of this package is to provide simple functions to compute complicated mathematical problems.

The functions exported in this package are:

-   **fn_cos(x,k)** which computes the cosine of a number using the truncated series expansion. X is the number to be transformed and k is the number of terms beyond the constant 1 included in the expansion equation.

```         
> fn_cos(4,9) 
[1] -0.6536441
```

-   **fn_sin(x,k)** which computes the sin of a number using the truncated series expansion. X is the number to be transformed and k is the number of terms beyond the constant 1 included in the expansion equation.

```         
> fn_sin(6,15)
[1] -0.2794155
```

-   **calculate_CI(x,conf = 0.95)** which calculates the lower- and upperbounds of the confidence interval about the mean of a vector. The vector (x) and the desired confidence level (conf) are passed as arguments to the function. The default level of confidence is 0.95.

```         
> set.seed(1234)
> x = sample(10:1000,20)
> calculate_CI(x,conf=0.95)
lower_bound upper_bound 
    405.851     712.349 
```