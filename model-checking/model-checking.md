Model Checking as Constraint Solving - Podelski 2000
====================================================

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
    container-title: 'Static analysis: 7th international symposium, sAS 2000, santa barbara, cA, uSA, june 29 - july 1, 2000. proceedings'
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

MCMT: A Model Checker Modulo Theories - Ghilardi Ranise - 2010
==============================================================

Abstract
--------

We describe mcmt, a fully declarative and deductive symbolic model checker for
safety properties of infinite state systems whose state variables are arrays.
Theories specify the properties of the indexes and the elements of the arrays.
Sets of states and transitions of a system are described by quantified
first-order formulae. The core of the system is a backward reachability
procedure which symbolically computes pre-images of the set of unsafe states and
checks for safety and fix-points by solving Satisfiability Modulo Theories (SMT)
problems. Besides standard SMT techniques, efficient heuristics for quantifier
instantiation, specifically tailored to model checking, are at the very heart of
the system. mcmt has been successfully applied to the verification of imperative
programs, parametrised, timed, and distributed systems.

---
-   id: mcmt-model-checker-modulo-theories
    type: chapter
    author:
    -   family: Ghilardi
        given: Silvio
    -   family: Ranise
        given: Silvio
    editor:
    -   family: Giesl
        given: Jürgen
    -   family: Hähnle
        given: Reiner
    issued:
    -   year: 2010
    title: 'MCMT: A model checker modulo theories'
    title-short: MCMT
    container-title: 'Automated reasoning: 5th international joint conference, iJCAR
      2010, edinburgh, uK, july 16-19, 2010. proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 22-29
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

Infinite-State Model Checking of LTLR Formulas Using Narrowing - Bae Meseguer - 2014
====================================================================================

Abstract
--------

The linear temporal logic of rewriting (LTLR) is a simple extension of LTL that
adds spatial action patterns to the logic, expressing that a specific instance
of an action described by a rewrite rule has been performed. Although the theory
and algorithms of LTLR for finite-state model checking are well-developed, no
theoretical foundations have yet been developed for infinite-state LTLR model
checking. The main goal of this paper is to develop such foundations for
narrowing-based logical model checking of LTLR properties. A key theme in this
paper is the systematic relationship, in the form of a simulation with
remarkably good properties, between the concrete state space and the symbolic
state space. A related theme is the use of additional state space reduction
methods, such as folding and equational abstractions, that can in some cases
yield a finite symbolic state space.

---
-    id: infinite-state-model-checking-ltlr-narrowing
     type: chapter
     author:
     -   family: Bae
         given: Kyungmin
     -   family: Meseguer
         given: José
     editor:
     -   family: Escobar
         given: Santiago
     issued:
     -   year: 2014
     title: Infinite-state model checking of lTLR formulas using narrowing
     container-title: 'Rewriting logic and its applications: 10th international workshop, wRLA 2014, held as a satellite event of eTAPS, grenoble, france, april 5-6, 2014, revised selected papers'
     publisher: Springer International Publishing
     publisher-place: Cham
     page: 113-129
---

Definition, Semantics, and Analysis of Multirate Synchronous AADL - Bae Ölveczky Meseguer - 2014
================================================================================================

Abstract
--------

Many cyber-physical systems are hierarchical distributed control systems whose
components operate with different rates, and that should behave in a virtually
synchronous way. Designing such systems is hard due to asynchrony, skews of the
local clocks, and network delays; furthermore, their model checking is typically
unfeasible due to state space explosion. Multirate PALS reduces the problem of
designing and verifying virtually synchronous multirate systems to the much
simpler tasks of specifying and verifying their underlying synchronous design.
To make the Multirate PALS design and verification methodology available within
an industrial modeling environment, we define in this paper the modeling
language Multirate Synchronous AADL, which can be used to specify multirate
synchronous designs using the AADL modeling standard. We then define the formal
semantics of Multirate Synchronous AADL in Real-Time Maude, and integrate
Real-Time Maude verification into the OSATE tool environment for AADL. Finally,
we show how an algorithm for smoothly turning an airplane can be modeled and
analyzed using Multirate Synchronous AADL.

---
-   id: semantics-multirate-synchronous-aadl
    type: chapter
    author:
    -   family: Bae
        given: Kyungmin
    -   family: Ölveczky
        given: Peter Csaba
    -   family: Meseguer
        given: José
    editor:
    -   family: Jones
        given: Cliff
    -   family: Pihlajasaari
        given: Pekka
    -   family: Sun
        given: Jun
    issued:
    -   year: 2014
    title: Definition, semantics, and analysis of multirate synchronous aADL
    container-title: 'FM 2014: Formal methods: 19th international symposium, singapore,
      may 12-16, 2014. proceedings'
    publisher: Springer International Publishing
    publisher-place: Cham
    page: 94-109
---

Software Model Checking via IC3 - Cimatti Griggio - 2012
========================================================

Abstract
--------

IC3 is a recently proposed verification technique for the analysis of sequential
circuits. IC3 incrementally overapproximates the state space, refuting potential
violations to the property at hand by constructing relative inductive blocking
clauses. The algorithm relies on aggressive use of Boolean satisfiability (SAT)
techniques, and has demonstrated impressive effectiveness.

In this paper, we present the first investigation of IC3 in the setting of
software verification. We first generalize it from SAT to Satisfiability Modulo
Theories (SMT), thus enabling the direct analysis of programs after an encoding
in form of symbolic transition systems. Second, to leverage the Control-Flow
Graph (CFG) of the program being analyzed, we adapt the "linear" search style of
IC3 to a tree-like search. Third, we cast this approach in the framework of lazy
abstraction with interpolants, and optimize it by using interpolants extracted
from proofs, when useful.

The experimental results demonstrate the great potential of IC3, and the
effectiveness of the proposed optimizations.

---
-   id: model-checking-ic3
    type: chapter
    author:
    -   family: Cimatti
        given: Alessandro
    -   family: Griggio
        given: Alberto
    editor:
    -   family: Madhusudan
        given: P.
    -   family: Seshia
        given: Sanjit A.
    issued:
    -   year: 2012
    title: Software model checking via iC3
    container-title: 'Computer aided verification: 24th international conference, cAV 2012, berkeley, cA, uSA, july 7-13, 2012 proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 277-293
---

An Analysis of SAT-Based Model Checking Techniques in an Industrial Environment - Amla Du Kuehlmann Kurshan McMillan - 2005
===========================================================================================================================

Abstract
--------

Model checking is a formal technique for automatically verifying that a
finite-state model satisfies a temporal property. In model checking, generally
Binary Decision Diagrams (BDDs) are used to efficiently encode the transition
relation of the finite-state model. Recently model checking algorithms based on
Boolean satisfiability (SAT) procedures have been developed to complement the
traditional BDD-based model checking. These algorithms can be broadly classified
into three categories: (1) bounded model checking which is useful for finding
failures (2) hybrid algorithms that combine SAT and BDD based methods for
unbounded model checking, and (3) purely SAT-based unbounded model checking
algorithms. The goal of this paper is to provide a uniform and comprehensive
basis for evaluating these algorithms. The paper describes eight bounded and
unbounded techniques, and analyzes the performance of these algorithms on a
large and diverse set of hardware benchmarks.

---
references:
-   id: sat-based-model-checking-analysis
    type: chapter
    author:
    -   family: Amla
        given: Nina
    -   family: Du
        given: Xiaoqun
    -   family: Kuehlmann
        given: Andreas
    -   family: Kurshan
        given: Robert P.
    -   family: McMillan
        given: Kenneth L.
    editor:
    -   family: Borrione
        given: Dominique
    -   family: Paul
        given: Wolfgang
    issued:
    -   year: 2005
    title: An analysis of sAT-based model checking techniques in an industrial environment
    container-title: 'Correct hardware design and verification methods: 13th iFIP
      wG 10.5 advanced research working conference, cHARME 2005, saarbrücken, germany,
      october 3-6, 2005. proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 254-268
...

PKind: A parallel k-induction based model checker - Bahsai Tinelli - 2011
=========================================================================

Abstract
--------

PKind is a novel parallel k-induction-based model checker of invariant
properties for finite- or infinite-state Lustre programs. Its architecture,
which is strictly message-based, is designed to minimize synchronization delays
and easily accommodate the incorporation of incremental invariant generators to
enhance basic k-induction. We describe PKind's functionality and main features,
and present experimental evidence that PKind significantly speeds up the
verification of safety properties and, due to incremental invariant generation,
also considerably increases the number of provable ones.
