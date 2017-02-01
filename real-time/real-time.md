Semantics and Pragrmatics of Real-Time Maude - Olveczky Meseguer - 2007
=======================================================================

Abstract
--------

At present, designers of real-time systems face a dilemma between expressiveness
and automatic verification: if they can specify some aspects of their system in
some automaton-based formalism, then automatic verification is possible; but
more complex system components may be hard or impossible to express in such
decidable formalisms. These more complex components may still be simulated; but
there is then little support for their formal analysis. The main goal of
Real-Time Maude is to provide a way out of this dilemma, while complementing
both decision procedures and simulation tools. Real-Time Maude emphasizes ease
and generality of specification, including support for distributed real-time
object-based systems. Because of its generality, falling outside of decidable
system classes, the formal analyses supported—including symbolic simulation,
breadth-first search for failures of safety properties, and model checking of
time-bounded temporal logic properties—are in general incomplete (although they
are complete for discrete time). These analysis techniques have been shown
useful in finding subtle bugs of complex systems, clearly outside the scope of
current decision procedures. This paper describes both the semantics of
Real-Time Maude specifications, and of the formal analyses supported by the
tool. It also explains the tool's pragmatics, both in the use of its features,
and in its application to concrete examples.

Summary
-------

The authors describe the Real-Time Maude tool, which provides a language for
specifying and analyzing real-time systems (including hybrid systems and timed
automata) using Rewriting Logic. A series of transformations are applied to the
input specification, each one semantics preserving, which reduce a real-time
system and a query about that system to a Maude module and a corresponding query
to that module. The specification language allows for rules with transition
times attached to them; the time associated to a rule can be non-deterministic,
and can come from any theory of time including discrete/dense and
linearly/partially-ordered times.

The rewrite rules in a Real-Time Maude theory can be broken into two disjoint
sets; the normal rewrite rules which are considered to be instantaneous
transitions and the `tick` rules which advance time some non-zero amount. The
`tick` rules are further broken into four classes, each one having a slightly
different way that time is advanced. When transforming the Real-Time Maude
specification into a Maude specification, the time "sampling strategy" is taken
into account, which decides how to advance time at each step. Available
strategies are `def <r>` (try to advance time by `r` time units unless the
`tick` rule specifies a lower maximum), `max` (advance time by the maximum
amount the `tick` rule will allow), `max def <r>` (advance the time by the
maximum amount on `tick` rules that have a maximum bound, otherwise advance by
time `r`), and `det` (assume all `tick` rules are time-deterministic - no
un-initialized variables show up in the time).

The queries that can be handled include the natural extension of Maude's
commands (`rewrite` and `search`), in addition to extensions of the queries to
the Maude model-checker (which can check LTL formula over finite state-space
systems). Each command has timed variants, allowing the user to bound how long
to check the system for. In addition, a few temporal properties like `until` (`p
U q`) and `until/stable` (`p U q /\ q => [] q`) have specialized commands for
checking them, as they can be checked much more efficiently than general LTL
formulas. The commands `find earliest` and `find latest` will find the earliest
and latest occurances of a pattern in the search space, given a time-bound,
allowing for high-level coarse analysis of a system.

Overall, Real-Time Maude allows for high-level specifications, even of systems
that are undecidable in nature. Most hybrid-system analysis tools restict to a
subclass of systems that are by nature decidable, allowing them to verify many
more properties but not to express all systems without some encoding. Because of
this, one cannot be sure that if Real-Time Maude doesn't find a counterexample
that there isn't one, but if Real-Time Maude does find a counterexample it is a
real one (sound but not complete). As the bounds are pushed on sybolic model
checking and incorporating decision procedures into Maude, the class of systems
decidable by tools like this will likewise grow.

References
----------

-   Logics and Models of Real Time: A Survey
    Alur Henzinger - 1992
-   Model Checking
    Clarke Grumberg Peled - 1999
-   The Maude LTL Model Checker
    Eker Mesegure Sridharanarayanan - 2002
-   Formal Modelling and Analysis of the NORM Multicast Protocol Using Real-Time Maude
    Lien 2004
-   Formal Simulation and Analysis of the CASH Scheduling Algorithm in Real-Time Maude
    Olveczky Caccamo - 2006
-   Specification and Analysis of the AER/NCA Active Network Protocol Suite in Real-Time Maude
    Olveczky Meseguer Talcott - 2006

---
-   id: real-time-maude-semantics-pragrmatics
    type: article-journal
    author:
    -   family: Ölveczky
        given: Peter Csaba
    -   family: Meseguer
        given: José
    issued:
    -   year: 2007
    title: Semantics and pragmatics of real-time maude
    container-title: Higher-Order and Symbolic Computation
    page: 161-196
    volume: 20
    issue: 1
---


Abstraction and Completeness for Real-Time Maude - Olveczky Meseguer - 2007
===========================================================================

Abstract
--------

This paper presents criteria that guarantee completeness of Real-Time Maude
search and temporal logic model checking analyses, under the maximal time
sampling strategy, for a large class of real-time systems. As a special case, we
characterize simple conditions for such completeness for object-oriented
real-time systems, and show that these conditions can often be easily proved
even for large and complex systems, such as advanced wireless sensor network
algorithms and active network multicast protocols. Our results provide
completeness and decidability of timebounded search and model checking for a
large and useful class of dense-time nonZeno real-time systems far beyond the
class of automaton-based real-time systems for which well known decision
procedures exist. For discrete time, our results justify abstractions that can
drastically reduce the state space to make search and model checking analyses
feasible.

Summary
-------

The authors present the completeness argument for Real-Time Maude, relative to a
selecting the maximal time-sampling strategy. Real-Time Maude uses a theory
transformation from a real-time rewrite theory to a normal rewrite theory (and a
corresponding transformation on the query supplied as well); to establish
completeness for the resulting analysis a *$\Pi$-stuttering bisimulation* is
established between the original theory and the transformed one, where $\Pi$ is
a pre-determined set of atomic predicates over the states of the system.

To establish completeness, a notion of *time-robustness* is defined, which
essentially means that either the system is in a steady-state forever, or that
the system can take maximal time-steps without missing out on interesting
behaviors. Additionally, the set $\Pi$ of atomic predicates must have
*tick-invariance* or *tick-stabilization* (for bounded-time and unbounded-time
analysis respectively). Tick-stabilization is the property that in a sequence of
non-maximal rewrites followed by a maximal rewrite, the set $\Pi$ of atomic
predicates can only change their valuations once (and not at all for $\inf$
rewrites). Tick-invariance states that the set $\Pi$ of atomic predicates can
only change their valuations on maximal rewrites (not on non-maximal rewrites or
$\inf$ rewrites), which implies tick-stabilization. Tick-stabilization ensures
that no behavior will be missed in taking maximal steps when simulating (so that
a bisimulation can be established), allowing much quicker analysis.
Tick-invariance ensures that during a bounded analysis, no matter what the
time-bound is set on the analysis, the final state reached will not miss
behaviors and once again a bisimulation can be established.

The case of object-oriented timed modules is also considered, where the system
state is a multiset of objects and messages. Here, the time-robustness
properties simplify to a much easier-to-check set of properties in practice,
allowing for faster verification that the analysis of Real-Time Maude is
complete. This reduction relies on the definition of two functions `delta:
Configuration Time -> Configuration` (update function) and `mte: Configuration
-> Time` (maximum time elapse), which help to calculate the maximal time-step
and corresponding transitions of the system.

Finally, in an earlier version of the paper, an unclocked analysis is presented.
Here, the clock portion of the global system state is projected out, resulting
in the same real-time rewrite theory but without the tick rules. A similar
bisimulation is established between the real-time rewrite theory and the
unclocked theory, which gives completeness of the resulting analysis. The
benefit here is that without the time component of the state, the state-space
becomes much smaller and easier to exhaustively explore. Of course, the types of
properties that can be expressed and verified can no longer include elements of
time (eg. "before/after time $r$ we have $\phi$"), but this provides a
potentially very fast semi-decision procedure (may not terminate) for a large
number of properties.

References
----------

-   Mechanical Verification of Reactive Systems
    Manolios - 2001
-   Theoroidal  Maps as Algebraic Simulations
    Marti-Oliet Meseguer Palomino - 2005
-   A Categorical Aproach to Simulations
    Palomino Meseguer Marti-Oliet - 2005
-   Generalized Rewrite Theories
    Bruni Meseguer - 2003

---
-   id: real-time-maude-abstraction-completeness
    type: article-journal
    author:
    -   family: Ölveczky
        given: Peter Csaba
    -   family: Meseguer
        given: José
    issued:
    -   year: 2007
        month: 7
    title: Abstraction and completeness for real-time maude
    container-title: Electronic Notes in Theoretical Computer Science
    publisher: Elsevier
    page: 5-27
    volume: 176
    issue: 4
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
-   id: design-verification-cps-multirate-pals
    type: article-journal
    author:
    -   family: Bae
        given: Kyungmin
    -   family: Krisiloff
        given: Joshua
    -   family: Meseguer
        given: Jose
    -   family: Ölveczky
        Peter Csaba
    issued:
    -   year: 2015
        month: 6
    title: Designing and verifying distributed cyber-physical systems using multirate PALS
    container-title: Sci. Comput. Program.
    publisher: Elsevier North-Holland, Inc.
    publisher-place: Amsterdam, The Netherlands, The Netherlands
    page: 13-50
    volume: 103
    issue: C
---
