An Effecient Unification Algorithm - Martelli Montanari - 1982
==============================================================

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

---
- id: unification-martelli-montanari
  type: article-journal
  author:
  - family: Martelli
    given: Alberto
  - family: Montanari
    given: Ugo
  issued:
  - year: 1982
  title: An efficient unification algorithm
  container-title: TRANSACTIONS ON PROGRAMMING LANGUAGES AND SYSTEMS (TOPLAS)
  page: 258-282
  volume: 4
  issue: 2
...

Solving Equations in Abstract Algebra: A Rule-Based Survey of Unification - Jouannaud Kirchner - 1991
=====================================================================================================

---
- id: unification-jouannaud-kirchner
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
...
