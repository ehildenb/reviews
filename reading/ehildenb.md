Model Checking as Constraint Solving - Podelski - 2000
======================================================

Abstract
--------

We show how model checking procedures for different kinds of infinite-state
systems can be formalized as a generic constraint-solving procedure, viz. the
saturation under a parametric set of inference rules. The procedures can be
classified by the solved form they are to compute. This solved form is a
recursive (automaton-like) definition of the set of states satisfying the given
temporal property in the case of systems over stacks or other symbolic data.

---
- id: podelski-constraint-solving-mc
  type: chapter
  author:
  - family: Podelski
    given: Andreas
  editor:
  - family: Palsberg
    given: Jens
  issued:
  - year: 2000
  title: Model checking as constraint solving
  container-title: 'Static Analysis: 7th International Symposium, SAS 2000, Santa Barbara, CA, USA, June 29 - July 1, 2000. Proceedings'
  publisher: Springer Berlin Heidelberg
  publisher-place: Berlin, Heidelberg
  page: 22-37
---

Constraint-Based Deductive Model Checking - Delzanno Podelski - 2001
====================================================================

Abstract
--------

We show that constraint logic programming (CLP) can serve as a conceptual basis
and as a practical implementation platform for the model checking of
infinite-state systems. CLP programs are logical formulas (built up from
constraints) that have both a logical interpretation and an operational
semantics. Our contributions are: (1) a translation of concurrent systems
(imperative programs) into CLP programs with the same operational semantics; and
(2) a deductive method for verifying safety and liveness properties of the
systems which is based on the logical interpretation of the CLP programs
produced by the translation. We have implemented the method in a CLP system and
verified well-known examples of infinite-state programs over integers, using
linear constraints here as opposed to Presburger arithmetic as in previous
solutions.

---
- id: delzanno-podelski-constraint-based-deductive-mc
  type: article-journal
  author:
  - family: Delzanno
    given: Giorgio
  - family: Podelski
    given: Andreas
  issued:
  - year: 2001
  title: Constraint-based deductive model checking
  container-title: International Journal on Software Tools for Technology Transfer
  page: 250-270
  volume: 3
  issue: 3
---
