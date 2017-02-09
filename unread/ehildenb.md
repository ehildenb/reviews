The nuXmv Symbolic Model Checker - Cavada Cimatti Dorigatti Griggio Mariotti Micheli Mover Roveri Tonetta - 2014
================================================================================================================

Abstract
--------

This paper describes the nuXmv symbolic model checker for finite- and
infinite-state synchronous transition systems. nuXmv is the evolution of the
nuXmv open source model checker. It builds on and extends nuXmv along two main
directions. For finite-state systems it complements the basic verification
techniques of nuXmv with state-of-the-art verification algorithms. For
infinite-state systems, it extends the nuXmv language with new data types,
namely Integers and Reals, and it provides advanced SMT-based model checking
techniques.

Besides extended functionalities, nuXmv has been optimized in terms of
performance to be competitive with the state of the art. nuXmv has been used in
several industrial projects as verification back-end, and it is the basis for
several extensions to cope with requirements analysis, contract based design,
model checking of hybrid systems, safety assessment, and software model
checking.

This work was carried out within the D-MILS project, which is partially funded
under the European Commission’s Seventh Framework Programme (FP7).

---
- id: cavada-cimatti-dorigatti-nuxmv-model-checker
  type: chapter
  author:
  - family: Cavada
    given: Roberto
  - family: Cimatti
    given: Alessandro
  - family: Dorigatti
    given: Michele
  - family: Griggio
    given: Alberto
  - family: Mariotti
    given: Alessandro
  - family: Micheli
    given: Andrea
  - family: Mover
    given: Sergio
  - family: Roveri
    given: Marco
  - family: Tonetta
    given: Stefano
  editor:
  - family: Biere
    given: Armin
  - family: Bloem
    given: Roderick
  issued:
  - year: 2014
  title: The nuXmv symbolic model checker
  container-title: 'Computer aided verification: 26th international conference, cAV 2014, held as part of the vienna summer of logic, vSL 2014, vienna, austria, july 18-22, 2014. proceedings'
  publisher: Springer International Publishing
  publisher-place: Cham
  page: 334-342
---

Designing and verifying distributed cyber-physical systems using Multirate PALS: An airplane turning control system case study - Bae Krisiloff Meseguer Ölveczky - 2015
=======================================================================================================================================================================

Abstract
--------

transportation systems, are very hard to design and verify, because of
asynchronous communication, network delays, and clock skews. Their model
checking verification typically becomes unfeasible due to the huge state space
explosion caused by the system's concurrency. The Multirate PALS (“physically
asynchronous, logically synchronous”) methodology has been proposed to reduce
the design and verification of a DCPS to the much simpler task of designing and
verifying its underlying synchronous version, where components may operate with
different periods. This paper presents a methodology for formally modeling and
verifying multirate DCPSs using Multirate PALS. In particular, this methodology
explains how to deal with the system's physical environment in Multirate PALS.
We illustrate our methodology with a multirate DCPS consisting of an airplane
maneuvered by a pilot, who turns the airplane to a specified angle through a
distributed control system. Our formal analysis using Real-Time Maude revealed
that the original design did not achieve a smooth turning maneuver, and led to a
redesign of the system. We then use model checking and Multirate PALS to prove
that the redesigned system satisfies the desired correctness properties, whereas
model checking the corresponding asynchronous model is unfeasible. This shows
that Multirate PALS is not only effective for formal DCPS verification, but can
also be used effectively in the DCPS design process.

---
- id: design-verification-cps-multirate-pals
  type: article-journal
  author:
  - family: Bae
    given: Kyungmin
  - family: Krisiloff
    given: Joshua
  - family: Meseguer
    given: Jose
  - family: Ölveczky
    Peter Csaba
  issued:
  - year: 2015
    month: 6
  title: Designing and verifying distributed cyber-physical systems using multirate PALS
  container-title: Sci. Comput. Program.
  publisher: Elsevier North-Holland, Inc.
  publisher-place: Amsterdam, The Netherlands, The Netherlands
  page: 13-50
  volume: 103
  issue: C
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
- id: logical-model-checking-narrowing
  type: paper-conference
  author:
  - family: Bae
    given: Kyungmin
  - family: Escobar
    given: Santiago
  - family: Meseguer
    given: José
  editor:
  - family: Raamsdonk
    given: Femke
    dropping-particle: van
  issued:
  - year: 2013
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
- id: bae-rewriting-based-model-checking
  author:
  - family: Bae
    given: Kyungmin
  issued:
  - year: 2014
  title: Rewriting-Based Model Checking Methods
  container-title: PhD Thesis
  publisher: University of Illinois at Urbana Champaign
---
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
- id: superposition-modulo-linear-arithmetic
  type: chapter
  author:
  - family: Althaus
    given: Ernst
  - family: Kruglov
    given: Evgeny
  - family: Weidenbach
    given: Christoph
  editor:
  - family: Ghilardi
    given: Silvio
  - family: Sebastiani
    given: Roberto
  issued:
  - year: 2009
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
- id: rewrite-based-satisfiability
  type: article-journal
  author:
  - family: Armando
    given: Alessandro
  - family: Bonacina
    given: Maria Paola
  - family: Ranise
    given: Silvio
  - family: Schulz
    given: Stephan
  issued:
  - year: 2006
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
- id: rewriting-approach-satisfiability
  type: article-journal
  author:
  - family: Armando
    given: Alessandro
  - family: Ranise
    given: Silvio
  - family: Rusinowitch
    given: Michaël
  issued:
  - year: 2003
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
- id: satisfiability-with-speculative-inferences
  type: article-journal
  author:
  - family: Bonacina
    given: Maria Paola
  - family: Lynch
    given: Christopher A.
  - family: Moura
    given: Leonardo
    dropping-particle: de
  issued:
  - year: 2011
  title: On deciding satisfiability by theorem proving with speculative inferences
  container-title: Journal of Automated Reasoning
  page: 161-189
  volume: 47
  issue: 2
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
verified several example algorithms. We also applied our technique to a
non-software model-checking problem from biology – we used it to analyze and
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

Checking Safety Properties Using Induction and a SAT-Solver - Sheeran Singh Stålmarck - 2002
============================================================================================

Abstract
--------

We take a fresh look at the problem of how to check safety properties of finite
state machines. We are particularly interested in checking safety properties
with the help of a SAT-solver. We describe some novel induction-based methods,
and show how they are related to more standard fixpoint algorithms for
invariance checking. We also present preliminary experimental results in the
verification of FPGA cores. This demonstrates the practicality of combining a
SAT-solver with induction for safety property checking of hardware in a real
design flow.

---
references:
-   id: checking-safety-using-induction.pdf
    type: chapter
    author:
    -   family: Sheeran
        given: Mary
    -   family: Singh
        given: Satnam
    -   family: Stålmarck
        given: Gunnar
    editor:
    -   family: Hunt
        given: Warren A.
    -   family: Johnson
        given: Steven D.
    issued:
    -   year: 2000
    title: Checking safety properties using induction and a sAT-solver
    container-title: 'Formal methods in computer-aided design: Third international conference, fMCAD 2000 austin, tX, uSA, november 1–3, 2000 proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 127-144
---

Model Checking Embedded C Software using k-Induction and Invariants (extended version)
======================================================================================

Abstract
--------

We present a proof by induction algorithm, which combines k-induction with
invariants to model check embedded C software with bounded and unbounded loops.
The k-induction algorithm consists of three cases: in the base case, we aim to
find a counterexample with up to k loop unwindings; in the forward condition, we
check whether loops have been fully unrolled and that the safety property P
holds in all states reachable within k unwindings; and in the inductive step, we
check that whenever P holds for k unwindings, it also holds after the next
unwinding of the system. For each step of the k-induction algorithm, we infer
invariants using affine constraints (i.e., polyhedral) to specify pre- and
post-conditions. Experimental results show that our approach can handle a wide
variety of safety properties in typical embedded software applications from
telecommunications, control systems, and medical devices; we demonstrate an
improvement of the induction algorithm effectiveness if compared to other
approaches.

---
-   id: model-checking-c-k-induction-invariants.pdf
---

Bounded Model Checking and Induction: From Refutation to Verification - Moura Ruess Sorea - 2003
================================================================================================

We explore the combination of bounded model checking and induction for proving
safety properties of infinite-state systems. In particular, we define a general
k-induction scheme and prove completeness thereof. A main characteristic of our
methodology is that strengthened invariants are generated from failed
k-induction proofs. This strengthening step requires quantifier-elimination, and
we propose a lazy quantifier-elimination procedure, which delays expensive
computations of disjunctive normal forms when possible. The effectiveness of
induction based on bounded model checking and invariant strengthening is
demonstrated using infinite-state systems ranging from communication protocols
to timed automata and (linear) hybrid automata.

---
-   id: bmc-induction-refutation-to-verification
    type: chapter
    author:
    -   family: Moura
        given: Leonardo
        dropping-particle: de
    -   family: Rueß
        given: Harald
    -   family: Sorea
        given: Maria
    editor:
    -   family: Hunt
        given: Warren A.
    -   family: Somenzi
        given: Fabio
    issued:
    -   year: 2003
    title: 'Bounded model checking and induction: From refutation to verification'
    title-short: Bounded model checking and induction
    container-title: 'Computer aided verification: 15th international conference, cAV 2003, boulder, cO, uSA, july 8-12, 2003. proceedings'
    publisher: Springer Berlin Heidelberg
    publisher-place: Berlin, Heidelberg
    page: 14-26
...
