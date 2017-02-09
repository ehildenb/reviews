An Effecient Unification Algorithm - Martelli Montanari - 1982
==============================================================

Abstract
--------

The unification problem in f'mst-order predicate calculus is described in
general terms as the solution of a system of equations, and a nondeterministic
algorithm is given. A new unification algorithm, characterized by having the
acyclicity test efficiently embedded into it, is derived from the
nondeterministic one, and a PASCAL implementation is given. A comparison with
other well-known unification algorithms shows that the algorithm described here
performs well in all cases.

Summary
-------

The authors define the unification problem as the solution to a set of
equations, also providing definitions for *most general unifier* and the *solved
form* of a unification problem: a set of equations in the form ${x_1 = t_1, ...,
x_n = t_n}$ where $x_i \notin fv(t_j)$ for all $i,j$. Two transformations are
provided which preserve the solution to the unification problem, and can be run
in a specific direction to get closer to solved form. Through repeated
non-deterministic fair application of these transformations, a unification
problem can be reduced to solved form. From there, the paper focuses on making
the algorithm more efficent by providing better data-structures to store the
current problem state in, and picking the next transformation to apply according
to an ordering on the existing problem state. This yields a *DAG-solved form*,
which while not a solved form itself can be used to obtain a solved form in a
fairly straightforward manner. This DAG-solved form is much more space
efficient, and the selection process for which transformations to apply at each
step makes for a more time efficient algorithm ($n*Ack^-1(n)* is proposed as the
overall optimized complexity). The algorithm is compared to other known
algorithms, and shown to perform good in three extreme cases, whereas the others
perform poorly in at least one case, leading the authors to conclude that their
algorithm will perform better in most applications of unification algorithms.

References
----------

-   Proving Program Properties, Symbolic Evaluation and Logical Precedural Semantics
    Levi Serovich - 1975
-   Theorem Proving with Structure Sharing and Efficient Unification
    Martelli Montanari - 1977
    
---
- id: martelli-montanari-efficient-unification
  type: article-journal
  author:
  -   family: Martelli
      given: Alberto
  -   family: Montanari
      given: Ugo
  issued:
  -   year: 1982
  title: An efficient unification algorithm
  container-title: TRANSACTIONS ON PROGRAMMING LANGUAGES AND SYSTEMS (TOPLAS)
  page: 258-282
  volume: 4
  issue: 2
---

Solving Equations in Abstract Algebra: A Rule-Based Survey of Unification - Jouannaud Kirchner - 1991
=====================================================================================================

Abstract
--------

We argue that unification is nothing but solving equations in abstract algebras
by showing that unification algorithms can be easily described by sets of rules
operating on equations. This approach eases the understanding of unification
algorithms, as well as their correctness proof. Standard unification,
unification in equational theories, order-sorted unification, as well as
higher-order unification will be surveyed from this systematic point of view.

Summary
-------

This paper is a survey of the field of unification up to 1991. A general
framework is proposed for posing unification problems, in which many special
cases (explored in the paper) fit. One main goal of the paper is to present
rule-based solutions to the unification problem, often leading to
non-deterministic derivations of complete and/or most-general unifiers. The
variations of unification problems explored are roughly broken into syntactic
and semantic unification. *Syntactic unification* is where the unification
problem comes from the free algebra of terms over some signature. *Semantic
unification* is when the unification problem is over an algebra which obeys
certain axioms. Additionally, a classification scheme for unification problems
is presented which provides six classes of problems: *U-based* if a CSMGU
(complete set of most general unifiers) exists for each unification problem,
*unitary* if there is at most one CSMGU, *finitary* if a CSMGU is always finite,
*infinitary* if it is U-based but not finitary, *nullary* if it is not U-based,
and *U-undecidable* if it is undecidable whether a given unification problem has
solutions.

Semantic unification problems are broken down into the particular theories each
unification problem is posed in. Algorithms and classifications (from above) are
provided for several different semantic unification problems. Additionally,
combination of two independent unification procedures are considered for
combining multiple distinct theories, including conditions under which it is
possible to combine them.

Finally, both order-sorted and higher-order unification are explored.
Order-sorted unification requires some extra inference rules in the unification
process to take the sort information into account, and additional requirements
(regularity, co-regularity for example) on the order-sorted theories are
explored. The higher-order case is a special case of the semantic unification
case, but can also be taken on its own as a problem of unification in the typed
$\lambda$-calculus.

References
----------

-   Unification in a Combination of Overloaded Order-Sorted Theories
    Boudet - 1991
-   Equations and Inequations on Finite and Infinite Trees
    Colmerauer - 1984
-   Designing Unification Procedures Using Transformations: A Survey
    Gallier Snyder - 1990
-   Syntactic Theories
    Jouannaud - 1990
-   Undecidable Properties of Syntactic Theorie
    Klay - 1991
-   Order-Sorted Unification
    Meseguer Goguen Smolka - 1990
-   Combination of Unification Algorithms
    Schmidt-Schauss - 1989
-   Higher-Order E-Unification
    Snyder - 1990
-   Unification in Many-Sorted Theories
    Walther - 1984
-   Symbolic Constraint Handling Through Unification in Finite Algebras
    Buettner Estenfeld Schmid Schneider Tiden - 1989
-   Incremental Construction of Unification Algorithms in Equational Theories
    Jouannaud Kirchner Kirchner - 1983
-   Unification Algebras: An Axiomatic Approach to Unification, Equation Solving, and Constraint Solving
    Siekmann Schmidt-Schauss - 1988

---
- id: jouannaud-Kirchner-solving-equations-rule-based-unification
  type: paper-conference
  author:
  - family: Jouannaud
    given: Jean-Pierre
  - family: Kirchner
    given: Claude
  issued:
  - year: 1991
  title: 'Solving equations in abstract algebras: A rule-based survey of unification'
  title-short: Solving equations in abstract algebras
  container-title: Computational logic - essays in honor of alan robinson
  page: 257-321
---
