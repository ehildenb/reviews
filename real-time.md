Semantics and Pragrmatics of Real-Time Maude - Olveczky Meseguer - 2007
=======================================================================

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

### References

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
references:
-   id: Ölveczky2007
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
    URL: http://dx.doi.org/10.1007/s10990-007-9001-5
    DOI: 10.1007/s10990-007-9001-5
    ISSN: 1573-0557
...
