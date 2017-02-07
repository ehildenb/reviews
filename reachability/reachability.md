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
-   id: model-checking-constraint-solving
    type: chapter
    author:
    -   family: Podelski
        given: Andreas
    editor:
    -   family: Palsberg
        given: Jens
    issued:
    -   year: 2000
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
-   id: model-checking-constraint-based-deduction
    type: article-journal
    author:
    -   family: Delzanno
        given: Giorgio
    -   family: Podelski
        given: Andreas
    issued:
    -   year: 2001
    title: Constraint-based deductive model checking
    container-title: International Journal on Software Tools for Technology Transfer
    page: 250-270
    volume: 3
    issue: 3
---

A Logical Reconstruction of Reachability - Rybina Voronkov - 2003
=================================================================

Abstract
--------

In this paper we discuss reachability analysis for infinite-state systems.
Infinite-state systems are formalized using transition systems over a
first-order structure. We establish a common ground relating a large class of
algorithms by analyzing the connections between the symbolic representation of
transition systems and formulas used in various reachability algorithms. Our
main results are related to the so-called guarded assignment systems.

Summary
-------

\newcommand{\M}{\mathbb{M}}
\newcommand{\D}{\mathcal{D}}
\newcommand{\V}{\mathcal{V}}
\newcommand{\T}{\mathcal{T}}
\newcommand{\satis}{\models}
\newcommand{\unsatis}{\not\models}

The authors provide an abstract definition of reachability in terms of a
transition system over a first-order structure. Checking reachability is reduced
to checking the validity of a formula over the signature of the first-order
structure. Generic algorithms are provided to do both forwards and backwards
reachability: these algorithms assume access to a solver which can decide
satisfiability and validity in the underlying first-order theory. Additionally,
the paper the more specific case of GAS (*guarded assignment systems*), which
reduces the complexity of the reachability problem. Assuming a GAS, certain
*stability* properties can be shown about the forwards and backwards
reachability problems; in particular the "next state" function is stable w.r.t.
positive existential formulas and conjunctive constraints, and the "previous
state" function is stable w.r.t. positive existential formulas, conjunctive
constraints, quantifier-free formulas, and simple constraints (Lemma 17).

Throughout the paper, a first-order structure $\M$ over a domain $\D$ is
assumed, where a *state* in the system is a valuation $s: \V \to \D$ ($\V$ a
set of variables). A formula $A$ is said to *represent* a set of states $S$ if
$s \in S$ iff $\M, s \satis A$. Additionally, a *transition relation* $\T$ is a
set of pairs of states, $(s: \V \to \D, s': \V \to \D)$, which is
*represented* by formula $B$ if $(s, s') \in \T$ iff $\M,s,s' \satis B$. A state
$s_n$ is *forward reachable* from $s_1$ if there is a sequence of states
$s_1, ..., s_n$ such that $(s_i, s_{i+1}) \in \T$ (similarly, $s_1$ is *backward
reachable* from $s_n$).

A *reachability problem* gives formulas $In$ (representing initial states),
$Fin$ (representing final states), and $Tr$ (representing the transition
relation), and asks if there are $s \in In$, $s' \in Fin$ such that $s'$ is
reachable from $s$ w.r.t. $Tr$. This problem is in general undecidable, but
special cases of it (eg. where satisfiability/validity in $\M$ are decidable)
become decidable. Note that, given a formula $A(\V)$ representing a set of
states, the set of states reachable in a step forward are
$\exists \V' . (A(\V') \land Tr(\V', \V))$, and in a step backward are
$\exists \V' . (A(\V') \land Tr(\V, \V'))$. This lets us define *forward
reachability* as the sequence of formulas $FR_i$ with $FR_0(V) = In(V)$,
$FR_{i+1}(V) = FR_i(V) \lor \exists \V' . (FR_i(\V') \land Tr(\V', \V))$.
Similarly, *backward reachability* as the sequence of formulas $BR_i$ with
$BR_0(V) = Fin(V)$,
$BR_{i+1}(V) = BR_i(V) \lor \exists \V' . (BR_i(\V') \land Tr(\V, \V'))$.

Note that we can now construct a forward (backward) reachability algorithm by
observing (Theorem 7 - also works with appropriate reversals of forward/backward
constructs):

>   (i) There exists a final state reachable from an initial state if and only if
>   there exists a number $i \geq 0$ such that
>   $\M \satis \exists \V . (FR_i(\V) \land Fin(\V))$. (ii) If there exists a
>   natural number $i \geq 0$ such that
>   $\M \unsatis \exists \V . (FR_i(\V) \land Fin(\V))$ and
>   $\M \satis \forall \V . (FR_{i+1}(V) \implies FR_i(V))$, then there exists no
>   final state reachable from an initial state.

---
-   id: logical-reconstruction-reachability
    type: paper-conference
    author:
    -   family: Rybina
        given: Tatiana
    -   family: Voronkov
        given: Andrei
    issued:
    -   year: 2003
    title: A logical reconstruction of reachability
    container-title: Perspectives of systems informatics, 5th international andrei ershov memorial conference, PSI 2003, akademgorodok, novosibirsk, russia, july 9-12, 2003, revised papers
    page: 222-237
---

Abstract Logical Model Checking of Infinite-State Systems Using Narrowing - Bae Escobar Meseguer - 2013
=======================================================================================================

Abstract
--------

A concurrent system can be naturally specified as a rewrite theory
$R = (Sigma, E, R)$ where states are elements of the initial algebra of terms
modulo $E$ and concurrent transitions are axiomatized by the rewrite rules $R$.
Under simple conditions, narrowing with rules R modulo equations E can be used
to symbolically represent the system's state space by means of terms with
logical variables. We call this symbolic representation a "logical state space"
and it can also be used for model checking verification of LTL properties. Since
in general such a logical state space can be infinite, we propose several
abstraction techniques for obtaining either an over-approximation or an
under-approximation of the logical state space: (i) a folding abstraction that
collapses patterns into more general ones, (ii) an easy-to-check method to
define (bisimilar) equational abstractions, and (iii) an iterated bounded model
checking method that can detect if a logical state space within a given bound is
complete. We also show that folding abstractions can be faithful for safety LTL
properties, so that they do not generate any spurious counterexamples. These
abstraction methods can be used in combination and, as we illustrate with
examples, can be effective in making the logical state space finite. We have
implemented these techniques in the Maude system, providing the first
narrowing-based LTL model checker we are aware of.

---
-   id: logical-model-checking-narrowing
    type: paper-conference
    author:
    -   family: Bae
        given: Kyungmin
    -   family: Escobar
        given: Santiago
    -   family: Meseguer
        given: José
    editor:
    -   family: Raamsdonk
        given: Femke
        dropping-particle: van
    issued:
    -   year: 2013
    title: Abstract Logical Model Checking of Infinite-State Systems Using Narrowing
    container-title: 24th international conference on rewriting techniques and applications (rTA 2013)
    collection-title: Leibniz international proceedings in informatics (lIPIcs)
    publisher: Schloss Dagstuhl–Leibniz-Zentrum fuer Informatik
    publisher-place: Dagstuhl, Germany
    page: 81-96
    volume: 21
---

Rewriting-Based Model Checking Methods - Bae - 2014
===================================================

Abstract
--------

Model checking is an automatic technique for verifying concurrent systems. The
properties of the system to be verified are typically expressed as temporal
logic formulas, while the system itself is formally specified as a certain
system specification language, such as computational logics and conventional
programming languages. Rewriting logic is a highly expressive computational
logic for effectively defining a formal executable semantics of a wide range of
system specification languages. This dissertation presents new rewriting-based
model checking methods and tools to effectively verify concurrent systems by
means of their rewriting-based formal semantics. Specifically, this work
develops: (i) efficient model checking algorithms and a tool for a suitable
property specification language, namely, linear temporal logic of rewriting
(LTLR) formulas under parameterized fairness; (ii) various infinite-state model
checking techniques for LTLR properties, such as equational abstraction, folding
abstraction, predicate abstraction, and narrowing-based symbolic model checking;
and (iii) the Multirate PALS methodology for making it possible to model check
virtually synchronous cyber-physical systems by reducing their system
complexity. To demonstrate rewriting-based model checking, we have developed
fully integrated modeling and model checking tools for two widely-used embedded
system modeling languages, AADL and Ptolemy II. This approach provides a
model-engineering process that combines the advantages of an existing modeling
language with automatic rewriting-based model checking.

---
-   id: rewriting-based-model-checking-bae-thesis
    author:
    -   family: Bae
        given: Kyungmin
    issued:
    -   year: 2014
    title: Rewriting-Based Model Checking Methods
    container-title: PhD Thesis
    publisher: University of Illinois at Urbana Champaign
---
