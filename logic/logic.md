Superposition Modulo Linear Arithmetic SUP(LA) - Althaus Kruglov Weidenbach - 2009
==================================================================================

Abstract
--------

The hierarchical superposition based theorem proving calculus of Bachmair,
Ganzinger, and Waldmann enables the hierarchic combination of a theory with full
first-order logic. If a clause set of the combination enjoys a sufficient
completeness criterion, the calculus is even complete. We instantiate the
calculus for the theory of linear arithmetic. In particular, we develop new
effective versions for the standard superposition redundancy criteria taking the
linear arithmetic theory into account. The resulting calculus is implemented in
SPASS(LA) and extends the state of the art in proving properties of first-order
formulas over linear arithmetic.

---
-   id: superposition-modulo-linear-arithmetic
    type: chapter
    author:
    -   family: Althaus
        given: Ernst
    -   family: Kruglov
        given: Evgeny
    -   family: Weidenbach
        given: Christoph
    editor:
    -   family: Ghilardi
        given: Silvio
    -   family: Sebastiani
        given: Roberto
    issued:
    -   year: 2009
    title: Superposition modulo linear arithmetic SUP(LA)
    container-title: 'Frontiers of combining systems: 7th international symposium, froCoS 2009, trento, italy, september 16-18, 2009. proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 84-99
---

New Results on Rewrite-Based Satisfiability Procedures - Armando Bonacina Ranise Schulz - 2009
==============================================================================================

Abstract
--------

Program analysis and verification require decision procedures to reason on
theories of data structures. Many problems can be reduced to the satisfiability
of sets of ground literals in theory T. If a sound and complete inference system
for first-order logic is guaranteed to terminate on T-satisfiability problems,
any theorem-proving strategy with that system and a fair search plan is a
T-satisfiability procedure. We prove termination of a rewrite-based first-order
engine on the theories of records, integer offsets, integer offsets modulo and
lists. We give a modularity theorem stating sufficient conditions for
termination on a combinations of theories, given termination on each. The above
theories, as well as others, satisfy these conditions. We introduce several sets
of benchmarks on these theories and their combinations, including both
parametric synthetic benchmarks to test scalability, and real-world problems to
test performances on huge sets of literals. We compare the rewrite-based theorem
prover E with the validity checkers CVC and CVC Lite. Contrary to the folklore
that a general-purpose prover cannot compete with reasoners with built-in
theories, the experiments are overall favorable to the theorem prover, showing
that not only the rewriting approach is elegant and conceptually simple, but has
important practical implications.

---
-   id: rewrite-based-satisfiability
    type: article-journal
    author:
    -   family: Armando
        given: Alessandro
    -   family: Bonacina
        given: Maria Paola
    -   family: Ranise
        given: Silvio
    -   family: Schulz
        given: Stephan
    issued:
    -   year: 2006
    title: New results on rewrite-based satisfiability procedures
    container-title: CoRR
    volume: abs/cs/0604054
---

A Rewriting Approach to Satisfiability Procedures - Armando Ranis Runisowitch - 2003
====================================================================================

Abstract
--------

We show how a well-known superposition-based inference system for first-order
equational logic can be used almost directly for deciding satisfiability in
various theories including lists, encryption, extensional arrays, extensional
finite sets, and combinations of them. We also give a superposition-based
decision procedure for homomorphism.

---
-   id: rewriting-approach-satisfiability
    type: article-journal
    author:
    -   family: Armando
        given: Alessandro
    -   family: Ranise
        given: Silvio
    -   family: Rusinowitch
        given: Michaël
    issued:
    -   year: 2003
    title: A rewriting approach to satisfiability procedures
    container-title: Inf. Comput.
    page: 140-164
    volume: 183
    issue: 2
---

On Deciding Satisfiability by Theorem Proving with Speculative Inferences - Banacina Lynch Moura - 2011
=======================================================================================================

Abstract
--------

Applications in software verification often require determining the
satisfiability of first-order formulae with respect to background theories.
During development, conjectures are usually false. Therefore, it is desirable to
have a theorem prover that terminates on satisfiable instances. Satisfiability
Modulo Theories (SMT) solvers have proven to be highly scalable, efficient and
suitable for integrated theory reasoning. Inference systems with resolution and
superposition are strong at reasoning with equalities, universally quantified
variables, and Horn clauses. We describe a theorem-proving method that tightly
integrates superposition-based inference system and SMT solver. The combination
is refutationally complete if background theory symbols only occur in ground
formulae, and non-ground clauses are variable-inactive. Termination is enforced
by introducing additional axioms as hypotheses. The system detects any
unsoundness introduced by these speculative inferences and recovers from it.

---
-   id: satisfiability-with-speculative-inferences
    type: article-journal
    author:
    -   family: Bonacina
        given: Maria Paola
    -   family: Lynch
        given: Christopher A.
    -   family: Moura
        given: Leonardo
        dropping-particle: de
    issued:
    -   year: 2011
    title: On deciding satisfiability by theorem proving with speculative inferences
    container-title: Journal of Automated Reasoning
    page: 161-189
    volume: 47
    issue: 2
---
