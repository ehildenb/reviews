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
