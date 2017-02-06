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

Understanding IC3 - Bradley - 2012
==================================

Abstract
--------

The recently introduced model checking algorithm, IC3, has proved to be among
the best SAT-based safety model checkers. Many implementations now exist. This
paper provides the context from which IC3 was developed and explains how the
originator of the algorithm understands it. Then it draws parallels between IC3
and the subsequently developed algorithms, FAIR and IICTL, which extend IC3's
ideas to the analysis of -regular and CTL properties, respectively. Finally, it
draws attention to certain challenges that these algorithms pose for the SAT and
SMT community.

---
references:
-   id: understanding-ic3
    type: chapter
    author:
    -   family: Bradley
        given: Aaron R.
    editor:
    -   family: Cimatti
        given: Alessandro
    -   family: Sebastiani
        given: Roberto
    issued:
    -   year: 2012
    title: Understanding iC3
    container-title: 'Theory and applications of satisfiability testing – SAT 2012: 15th international conference, trento, italy, june 17-20, 2012. proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 1-14
...

Efficient Implementation of Property Directed Reachability - Een Mishchenko Brayton - 2011
==========================================================================================

Abstract
--------

Last spring, in March 2010, Aaron Bradley published the first truly new
bit-level symbolic model checking algorithm since Ken McMillan's interpolation
based model checking procedure introduced in 2003. Our experience with the
algorithm suggests that it is stronger than interpolation on industrial
problems, and that it is an important algorithm to study further. In this paper,
we present a simplified and faster implementation of Bradley's procedure, and
discuss our successful and unsuccessful attempts to improve it.

Interpolation and SAT-Based Model Checking - McMillan - 2003
============================================================

We consider a fully SAT-based method of unbounded symbolic model checking based
on computing Craig interpolants. In benchmark studies using a set of large
industrial circuit verification instances, this method is greatly more efficient
than BDD-based symbolic model checking, and compares favorably to some recent
SAT-based model checking methods on positive instances.

---
-   id: McMillan2003
    type: chapter
    author:
    -   family: McMillan
        given: K. L.
    editor:
    -   family: Hunt
        given: Warren A.
    -   family: Somenzi
        given: Fabio
    issued:
    -   year: 2003
    title: Interpolation and sAT-based model checking
    container-title: 'Computer aided verification: 15th international conference, cAV 2003, boulder, cO, uSA, july 8-12, 2003. proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 1-13
...



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
