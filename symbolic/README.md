raSAT: An SMT Solver for Polynomial Constraints - Tung Khanh Ogawa - 2016
=========================================================================

Abstract
--------

This paper presents the raSAT SMT solver for polynomial
constraints, which aims to handle them over both reals and integers with
simple unified methodologies: (1) raSAT loop for inequalities, which
extends the interval constraint propagation with testing to accelerate
SAT detection, and (2) a non-constructive reasoning for equations over
reals, based on the generalized intermediate value theorem.

Summary
-------

---
- id: tung-khanh-ogawa-rasat-smt-polynomial-constraints
  type: chapter
  author:
  - family: Tung
    given: Vu Xuan
  - family: Van Khanh
    given: To
  - family: Ogawa
    given: Mizuhito
  editor:
  - family: Olivetti
    given: Nicola
  - family: Tiwari
    given: Ashish
  issued:
  - year: '2016'
  title: 'RaSAT: An smt solver for polynomial constraints'
  title-short: RaSAT
  container-title: 'Automated reasoning: 8th international joint conference, ijcar
    2016, coimbra, portugal, june 27 – july 2, 2016, proceedings'
  publisher: Springer International Publishing
  publisher-place: Cham
  page: '228-237'
  URL: http://dx.doi.org/10.1007/978-3-319-40229-1_16
  DOI: 10.1007/978-3-319-40229-1_16
  ISBN: '978-3-319-40229-1'
...

PSI: Exact Symbolic Inference for Probabilistic Programs - Gehr Misailovic Vechev - 2016
========================================================================================

Abstract
--------

Probabilistic inference is a key mechanism for reasoning about probabilistic
programs. Since exact inference is theoretically expensive, most probabilistic
inference systems today have adopted approximate inference techniques, which
trade precision for better performance (but often without guarantees). As a
result, while desirable for its ultimate precision, the practical effectiveness
of exact inference for probabilistic programs is mostly unknown. This paper
presents PSI <http://www.psisolver.org>, a novel symbolic analysis system for
exact inference in probabilistic programs with both continuous and discrete
random variables. PSI computes succinct symbolic representations of the joint
posterior distribution represented by a given probabilistic program. PSI can
compute answers to various posterior distribution, expectation and assertion
queries using its own backend for symbolic reasoning. Our evaluation shows that
PSI is more effective than existing exact inference approaches: (i) it
successfully computed a precise result for more programs, and (ii) simplified
expressions that existing computer algebra systems (e.g., Mathematica, Maple)
fail to handle.

Summary
-------

Probabilistic programming naturally takes into account well-defined uncertainty
in making decisions while running algorithms. Probabilistic programming
languages provide a way to reason about how the final outcome of a program
depends on various samples from probability distributions. Exact symbolic
descriptions of the output of the program in terms of its probabilistic inputs
can be challenging, so most existing techniques either use numerical
approximations (eg. polynomial expansions), sampling techniques (eg. Monte Carlo
simulations), or interactive inference (eg. a human steps in and simplifies the
probability distribution expressions). PSI provides exact automatic symbolic
inference and simplification of probabilistic programs.

### Overview

A simple example of a PSI probabilistic program is presented, along with a
high-level overview of the meaning of the program. Additionally, some inference
steps are demonstrated, showing how exact symbolic inference and simplification
can be performed within the PSI framework. To represent variable constraints,
the *Iverson bracket* is introduced, $[\_] : Bool \to Int$, which evaluates to
$1$ if the input is $true$, and $0$ otherwise. The bracket has properties
$[ P \land Q ] = [ P ] \cdot [ Q ]$, and $[ \lnot P ] = 1 - [ P ]$.
Additionally, *Dirac-$\delta$* functions are introduced, which have the property
that $\delta(x) = 0$ everywhere except at $x = 0$, and that
$\int \delta(x - x_0) f(x) dx = f(x_0)$. These two pieces together can be used
to represent probability distributions that depend on both continuous and
discrete variables; for example
$[0 \leq x] \cdot [x \leq 1] \cdot (x \cdot \delta(1-y) + (1-x) \cdot \delta(y))$
represents a multi-dimensional probability density function (in $x$ and $y$)
where $x$ is uniformly sampled from $[0,1]$ and $y$ is sampled from the discrete
Bernoulli distribution sampled from $x$. See the paper for more explanation
regarding this example.

### Symbolic Inference

The syntax of PSI's probabilistic language is given. It is a simple imperative
language with additional constructs `observe`, `assert`, `Expectation`,
`FromMarginal`, and `SampleFrom` for manipulation probability distributions.
Additionally, there are a number of built-in distribution functions (eg.
`Bernoulli`, `Gauss`, ...) which can be sampled from. For-loops are bounded by
two integers, so that each loop can be unrolled fully before symbolic execution.

An appropriate interpretation of each programming language construct into a
symbolic domain for probability distributions is provided. Standard arithmetic
over the reals and integers is supported, which have the usual interpretation in
the symbolic domain. In addition, *Dirac-$\delta$* functions are used to
represent discrete distributions as well as for variable assignments; *Iverson
brackets* can be used for certain primitive distributions (eg. uniform) as well
as representing comparison operators at branch points; *integrals and infinite
sums* marginalize over variables; and the *Gaussian antiderivative* symbol
represents the integral $\int_{- \infty}^{e} e^{-x^2} dx$.

A *Primitive distribution* $Dist$ is represented as a pair $PDF_{Dist}$ and
$Cond_{Dist}$ which represent the probability density function and relevant
conditions on variables in the distribution, respectively. See the section (and
appendix) for examples. User-defined distributions are allowed, provided that
they have well defined $PDF$ and $Cond$.

A *symbolic program state* is represented as a map from a PSI program state to a
probability distribution (or to an error state). Evaluation consumes one line of
a PSI program at a time and translates it into the corresponding effect on the
symbolic probability distribution, recursively building the final distribution.

The symbolic evaluation of PSI expressions is provided next. For each expression
construct (eg $*$, $+$, ...) a corresponding transformation
$\Sigma \to \Sigma \times E$ ($\Sigma$ is PSI program state, $E$ is the symbolic
evaluation of the expression) is supplied.
