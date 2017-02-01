Bounded Model Checking of Software Using SMT Solvers instead of SAT Solvers - Armando Montovani Platania - 2006
===============================================================================================================

Abstract
--------

C Bounded Model Checking (CBMC) has proven to be a successful approach to
automatic software analysis. The key idea is to (i) build a propositional
formula whose models correspond to program traces (of bounded length) that
violate some given property and (ii) use state-of-the-art SAT solvers to check
the resulting formulae for satisfiability. In this paper we propose a
generalisation of the CBMC approach based on an encoding into richer (but still
decidable) theories than propositional logic. We show that our approach may lead
to considerably more compact formulae than those obtained with CBMC. We have
built a prototype implementation of our technique that uses a Satisfiability
Modulo Theories (SMT) solver to solve the resulting formulae. Computer
experiments indicate that our approach compares favourably with and on some
significant problems outperforms CBMC.

---
-   id: bmc-smt-instead-sat
    type: chapter
    author:
    -   family: Armando
        given: Alessandro
    -   family: Mantovani
        given: Jacopo
    -   family: Platania
        given: Lorenzo
    editor:
    -   family: Valmari
        given: Antti
    issued:
    -   year: 2006
    title: Bounded model checking of software using SMT solvers instead of SAT solvers
    container-title: 'Model checking software: 13th international sPIN workshop, vienna, austria, march 30 - april 1, 2006. proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 146-162
---

Accelerating High-Level Bounded Model Checking - Ganai Gupta - 2006
===================================================================

Abstract
--------

SAT-based Bounded Model Checking (BMC) has been found promising in finding deep
bugs in industry designs and scaling well with design sizes. However, it has
limitations due to requirement of finite data paths, inefficient translations
and loss of high-level design information during the BMC problem formulation.
These shortcomings inherent in Boolean-level BMC can be avoided by using
high-level BMC. We propose a novel framework for high-level BMC, which includes
several techniques that extract high-level design information from EFSM models
to make the verification model "BMC friendly", and use it on-the-fly to simplify
the BMC problem instances. Such techniques overcome the inherent limitations of
Boolean-level BMC, while allowing integration of state-of-theart techniques for
BMC. In our controlled experiments we found signficant performance improvements
achievable by the proposed techniques.

---
-   id: accelerating-high-level-bmc
    type: paper-conference
    author:
    -   family: Ganai
        given: Malay K
    -   family: Gupta
        given: Aarti
    issued:
    -   year: 2006
    title: Accelerating high-level bounded model checking
    container-title: In proceedings of the 2006 iEEE/ACM international conference on computer-aided design, iCCAD ’06
    publisher: ACM
    page: 794-801
---

Completeness in SMT-Based BMC for Software Programming - Ganai Gupta - 2008
===========================================================================

Abstract
--------

Bounded Model Checking (BMC) is incomplete without a completeness threshold (CT)
bound. Previous methods, using recurrence diameter for obtaining CT, check for
existence of a longest loop-free path at every depth k. For terminating software
programs, we propose an efficient method for obtaining CT that requires solving
a formula of size $O(k)$ at some depths only, as compared to previous methods
that require solving a formula of $O(k^2)$ (or $O(klogk))$ size at every depth.
We augment previous methods for BMC simplifications using model transformation
and control flow information, with context-sensitive analysis. This results in
more BMC simplifications and further reduction in the number of CT checks. We
have implemented our techniques in a Satisfiability Modulo Theory (SMT)-based
BMC framework. Our controlled experiments on real-world software programs show
that our proposed formulation provides significant improvements over previous
approaches.

---
-   id: completeness-smt-bmc-software
    type: paper-conference
    author:
    -   family: Ganai
        given: Malay K.
    -   family: Gupta
        given: Aarti
    issued:
    -   year: 2008
    title: Completeness in sMT-based BMC for software programs
    container-title: Design, automation and test in europe, DATE 2008, munich, germany,
      march 10-14, 2008
    page: 831-836
---

Towards SMT Model Checking of Array-Based Systems - Ghilardi Nicolini Ranise Zucchelli - 2008
=============================================================================================

Abstract
--------

We introduce the notion of array-based system as a suitable abstraction of
infinite state systems such as broadcast protocols or sorting programs. By using
a class of quantified-first order formulae to symbolically represent array-based
systems, we propose methods to check safety (invariance) and liveness
(recurrence) properties on top of Satisfiability Modulo Theories solvers. We
find hypotheses under which the verification procedures for such properties can
be fully mechanized.

---
-   id: smt-model-checking-array-based-systems
    type: chapter
    author:
    -   family: Ghilardi
        given: Silvio
    -   family: Nicolini
        given: Enrica
    -   family: Ranise
        given: Silvio
    -   family: Zucchelli
        given: Daniele
    editor:
    -   family: Armando
        given: Alessandro
    -   family: Baumgartner
        given: Peter
    -   family: Dowek
        given: Gilles
    issued:
    -   year: 2008
    title: Towards sMT model checking of array-based systems
    container-title: 'Automated reasoning: 4th international joint conference, iJCAR
      2008 sydney, australia, august 12-15, 2008 proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 67-82
---

Light-weight SMT-Based Model Checking - Ghilardi Ranise Valsecchi - 2009
========================================================================

Abstract
--------

Recently, the notion of an array-based system has been introduced as an
abstraction of infinite state systems (such as mutual exclusion protocols or
sorting programs) which allows for model checking of invariant (safety) and
recurrence (liveness) properties by Satisfiability Modulo Theories (SMT)
techniques. Unfortunately, the use of quantified first-order formulae to
describe sets of states makes fix-point checking extremely expensive. In this
paper, we show how invariant properties for a sub-class of array-based systems
can be model-checked by a backward reachability algorithm where the length of
quantifier prefixes is eciently controlled by suitable heuristics. We also
present various refinements of the reachability algorithm that allows it to be
easily implemented in a client-server architecture, where a "light-weight"
algorithm is the client generating proof obligations for safety and fix-point
checks and an SMT solver plays the role of the server discharging the proof
obligations. We also report on some encouraging preliminary experiments with a
prototype implementation of our approach.

---
-   id: light-weight-smt-model-checking
    type: article-journal
    author:
    -   family: Ghilardi
        given: Silvio
    -   family: Ranise
        given: Silvio
    -   family: Valsecchi
        given: Thomas
    issued:
    -   year: 2009
    title: Light-weight sMT-based model checking
    container-title: Electr. Notes Theor. Comput. Sci.
    page: 85-102
    volume: 250
    issue: 2
---

Model Checking Using SMT and Theory of Lists - Milicevic Kugler - 2011
======================================================================

Abstract
--------

A main idea underlying bounded model checking is to limit the length of the
potential counter-examples, and then prove properties for the bounded version of
the problem. In software model checking, that means that only program traces up
to a given length are considered. Additionally, the program’s input space must
be made finite by defining bounds for all input parameters. To ensure the
finiteness of the program traces, these techniques typically require that all
loops are explicitly unrolled some constant number of times. Here, we show how
to avoid explicit loop unrolling by using the SMT Theory of Lists to model
feasible, potentially unbounded program traces. We argue that this approach is
easier to use, and, more importantly, increases the confidence in verification
results over the typical bounded approach. To demonstrate the feasibility of
this idea, we implemented a fully automated prototype software model checker and
verified several example algorithms. We also applied our technique to a non
software model-checking problem from biology – we used it to analyze and
synthesize correct executions from scenario-based requirements in the form of
Live Sequence Charts.

---
-   id: model-checking-smt-theory-of-lists
    type: chapter
    author:
    -   family: Milicevic
        given: Aleksandar
    -   family: Kugler
        given: Hillel
    editor:
    -   family: Bobaru
        given: Mihaela
    -   family: Havelund
        given: Klaus
    -   family: Holzmann
        given: Gerard J.
    -   family: Joshi
        given: Rajeev
    issued:
    -   year: 2011
    title: Model checking using sMT and theory of lists
    container-title: 'NASA formal methods: Third international symposium, nFM 2011, pasadena, cA, uSA, april 18-20, 2011. proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 282-297
---

An SMT Approach to Bounded Reachability Analysis of Model Programs - Veanes Bjorner Raschke - 2008
==================================================================================================

Abstract
--------

Model programs represent transition systems that are used to specify expected
behavior of systems at a high level of abstraction. The main application area is
application-level network protocols or protocol-like aspects of software
systems. Model programs typically use abstract data types such as sets and maps,
and comprehensions to express complex state updates. Such models are mainly used
in model-based testing as inputs for test case generation and as oracles during
conformance testing. Correctness assumptions about the model itself are usually
expressed through state invariants. An important problem is to validate the
model prior to its use in the above-mentioned contexts. We introduce a technique
of using Satisfiability Modulo Theories or SMT to perform bounded reachability
analysis of a fragment of model programs. We use the Z3 solver for our
implementation and benchmarks, and we use AsmL as the modeling language. The
translation from a model program into a verification condition of Z3 is
incremental and involves selective quantifier instantiation of quantifiers that
result from the comprehension expressions.

---
-   id: smt-approach-to-bounded-reachability
    type: chapter
    author:
    -   family: Veanes
        given: Margus
    -   family: Bjørner
        given: Nikolaj
    -   family: Raschke
        given: Alexander
    editor:
    -   family: Suzuki
        given: Kenji
    -   family: Higashino
        given: Teruo
    -   family: Yasumoto
        given: Keiichi
    -   family: El-Fakih
        given: Khaled
    issued:
    -   year: 2008
    title: An SMT approach to bounded reachability analysis of model programs
    container-title: 'Formal techniques for networked and distributed systems – fORTE 2008: 28th iFIP wG 6.1 international conference tokyo, japan, june 10-13, 2008 proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 53-68
---

Bounded Model Checking of Analog and Mixed-Signal Circuits Using an SMT Solver - Walter Little Myers - 2007
===========================================================================================================

Abstract
--------

This paper presents a bounded model checking algorithm for the verification of
*analog and mixed-signal* (AMS) circuits using a *satisfiability modulo
theories* (SMT) solver. The systems are modeled in *VHDL-AMS*, a hardware
description language for AMS circuits. In this model, system safety properties
are specified as assertion statements. The VHDL-AMS description is compiled into
*labeled hybrid Petri nets* (LHPNs) in which analog values are modeled as
continuous variables that can change at rates in a bounded range and digital
values are modeled using Boolean signals. The verification method begins by
transforming the LHPN model into an SMT formula composed of the initial state,
the transition relation unrolled for a specified number of iterations, and the
complement of the assertion in each set of state variables. When this formula
evaluates to true, this indicates a violation of the assertion and an error
trace is reported. This method has been implemented and preliminary results are
promising.

---
-   id: bcm-mixed-signal-circuits-smt
    type: chapter
    author:
    -   family: Walter
        given: David
    -   family: Little
        given: Scott
    -   family: Myers
        given: Chris
    editor:
    -   family: Namjoshi
        given: Kedar S.
    -   family: Yoneda
        given: Tomohiro
    -   family: Higashino
        given: Teruo
    -   family: Okamura
        given: Yoshio
    issued:
    -   year: 2007
    title: Bounded model checking of analog and mixed-signal circuits using an SMT solver
    container-title: 'Automated technology for verification and analysis: 5th international symposium, aTVA 2007 tokyo, japan, october 22–25, 2007 proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 66-81
---
