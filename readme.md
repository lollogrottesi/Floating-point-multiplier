The multiplication between two IEEE 754 floating point numbers is perfomed summing up the exponenets and multipliyng the mantissas.
A post normalization stage is needed to align the mantissa and th exponent with the normalized-biased form (IEEE 754).

More explanation of muliplication theory:

![theory](/img/mul_theory.png)

Rememer that when using biased exponent, the sum of the two will contain 2*Bias so a difference is required.

![Bias](/img/bias_adj.png)

Here an example is leaved:

![example](/img/example.png)

The hardware implementation used is the following:

![scheme](/img/scheme.png)