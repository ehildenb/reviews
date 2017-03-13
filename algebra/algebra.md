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


Tactics for Reasoning modulo AC in Coq - Baibant Pous - 2011
============================================================

Abstract
--------

We present a set of tools for rewriting modulo associativity and commutativity
(AC) in Coq, solving a long-standing practical problem. We use two building
blocks: first, an extensible reflexive decision procedure for equality modulo
AC; second, an OCaml plug-in for pattern matching modulo AC. We handle
associative only operations, neutral elements, uninterpreted function symbols,
and user-defined equivalence relations. By relying on type-classes for the
reification phase, we can infer these properties automatically, so that
end-users do not need to specify which operation is A or AC, or which constant
is a neutral element.

Summary
-------

Hand-written proofs skip many reasoning steps that mechanical proof checkers
must make explicit; one common example is matching modulo structural axioms such
as associativity, commutivity, and unit elements. For example, in a proof, you
may need to rewrite terms in the proof state, but the rewrites will only apply
modulo the associativity of a specified operator. Instead of having to
explicitely tell Coq how to re-associate the term before rewriting, an explicit
match modulo the associativity of the operator can be supplied and taken into
account by the rewriter.

For efficiency, the `aac_rewite` tactic consults an OCaml oracle to produce a
substitution instance which takes into account the structural axioms. This
substitution instance is verified by the tactic `aac_reflexivity`, which can
check equalities modulo the axioms. Given the substitution instance, the
standard `rewrite` is able to apply directly, and the proof procedes. The
`aac_reflexivity` can also be used directly to decide equality between two
terms as a standalone call.

### User Interface, Notation

A user can declare their operators, then make them instances of the Coq
type-classes `Associative`, `Commutative`, and `Unit` to declare the appropriate
structural axioms for them. The classes are parametric over a binary relation
which the operators have structural axioms with respect to; if this relation is
instantiated with Leibniz equality, the result is the standard notion of term
equality modulo structural axioms. When multiple substitutions are possible, the
user can list them and then use `aac_rewrite` with the appropriate options to
select the correct one.

An example of a proof using these tactics is supplied.

### Deciding equality modulo AC

`aac_reflexivity`, which decides equality modulo AAC, is defined using a
*two-level* approach [@barth-ruys-barendregt-two-level-lean-proof-checking]. An
inductive type is used to specify the *syntax* of a language and a
term-rewriting system is used to provide a quotient algebra over the inductive
type, thus giving *semantics* to some of the operators (see *congruence-types*,
[@barthe-geuvers-congruence-types]).

A conversion function (`eval`) between the algebra defined by the term-rewriting
system and the inductive type is supplied. To take advantage of the algebraic
reasoning, a relation over the inductive type axiomatizing the desired
relation of types is supplied. A lemma stating that conversion commutes with
this relation demonstrates that it is safe to reduce terms using the
term-rewriting system then check membership in the relation. Finally, a theorem
states that checking whether two types belong to the relation can be reduced to
checking whether their normal forms (using the `norm` function) are equal in the
algebra (via *Liebniz equality*). Note that the author avoids making this an
iff, specifically so that the equational reasoning in the term-rewriting system
must only be sound, but not necessarily complete. The paper calls this method
the *autarkic way* because while algebraic candidates demonstrating
membership in the relation are provided by an external oracle, the verification
that these candidates suffice is fully checked by the theorem prover.

Coq `Module`s are used to package information about reified terms (`Sym` for
uninterpreted functions and `Bin` for A/AC binary operations); two environments
`e_sym : idx -> Sym.pack X R.` and `e_bin : idx -> Bin.pack X R.` provide total
maps from identifiers into these packages. These packages contain information
about the arity of each symbol along with proofs that these symbols satisfy the
structural axioms. A normalization function (written in Coq) then takes terms
built of operators from these environments and canonicalizes them.

The final step is to actually generate the reified terms which Coq will then
normalize and check that these are a proof of membership in the desired
relation. This is performed by an OCaml oracle which reads information about
which operators are in the `Associative`, `Commutative`, and `Unit` type-classes
then performs the matching modulo A and AC. The generated candidate terms are
then supplied to the Coq proof, which then checks that the `norm` of the terms
are Liebniz equal, then checks that these terms imply membership in the desired
structural relation of the original types (via `eval`).

---
- id: braibant-pous-tactics-ac-reasoning-coq
  type: chapter
  author:
  - family: Braibant
    given: Thomas
  - family: Pous
    given: Damien
  editor:
  - family: Jouannaud
    given: Jean-Pierre
  - family: Shao
    given: Zhong
  issued:
  - year: '2011'
  title: Tactics for reasoning modulo ac in coq
  container-title: 'Certified programs and proofs: First international conference,
    cpp 2011, kenting, taiwan, december 7-9, 2011. proceedings'
  publisher: Springer Berlin Heidelberg
  publisher-place: Berlin, Heidelberg
  page: '167-182'
  URL: http://dx.doi.org/10.1007/978-3-642-25379-9_14
  DOI: 10.1007/978-3-642-25379-9_14
  ISBN: '978-3-642-25379-9'
...


